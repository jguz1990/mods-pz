CustomQuaternion = {}
CustomQuaternion.__index = CustomQuaternion

CustomQuaternion.__mul = function(q, r, out)
	out = out or q
	local qx, qy, qz, qw = q:unpack()
	local rx, ry, rz, rw = r:unpack()
	out.x = qx * rw + qw * rx + qy * rz - qz * ry
	out.y = qy * rw + qw * ry + qz * rx - qx * rz
	out.z = qz * rw + qw * rz + qx * ry - qy * rx
	out.w = qw * rw - qx * rx - qy * ry - qz * rz
	return out
end

function CustomQuaternion:new()
	local o = { x = 0, y = 0, z = 0, w = 0 }
	setmetatable(o, CustomQuaternion)
	self.__index = self

	return o
end

CustomQuaternion.unpack = function(q)
	return q.x, q.y, q.z, q.w
end

function CustomQuaternion.fromAngleAxis(angle, x, y, z)
	return CustomQuaternion:new():setAngleAxis(angle, x, y, z)
end

CustomQuaternion.setAngleAxis = function(q, angle, x, y, z)
	local s = math.sin(angle * .5)
	local c = math.cos(angle * .5)
	q.x = x * s
	q.y = y * s
	q.z = z * s
	q.w = c
	return q
end

CustomQuaternion.length = function(q)
    return math.sqrt( q.x * q.x + q.y * q.y + q.z * q.z + q.w * q.w )
end

CustomQuaternion.normalize = function(q)
    local l = q:length();

    if l == 0 then
        q.x = 0;
        q.y = 0;
        q.z = 0;
        q.w = 1;
    else
        l = 1 / l;
        q.x = q.x * l;
        q.y = q.y * l;
        q.z = q.z * l;
        q.w = q.w * l;
    end

    return q
end

---
CustomQuaternion.toRotationMatrix = function(q)
    local q0 = q.w
    local q1 = q.x
    local q2 = q.y
    local q3 = q.z

    local r00 = 2 * (q0 * q0 + q1 * q1) - 1
    local r01 = 2 * (q1 * q2 - q0 * q3)
    local r02 = 2 * (q1 * q3 + q0 * q2)

    local r10 = 2 * (q1 * q2 + q0 * q3)
    local r11 = 2 * (q0 * q0 + q2 * q2) - 1
    local r12 = 2 * (q2 * q3 - q0 * q1)

    local r20 = 2 * (q1 * q3 - q0 * q2)
    local r21 = 2 * (q2 * q3 + q0 * q1)
    local r22 = 2 * (q0 * q0 + q3 * q3) - 1

    return r00, r01, r02, r10, r11, r12, r20, r21, r22
end

local function clamp(v, min, max)
  if v < min then return min end
  if v > max then return max end
  return v
end

CustomQuaternion.toEulerAngles = function(m11, m12, m13, m21, m22, m23, m31, m32, m33)
    local y = math.asin( clamp( m13, - 1, 1 ) );
    local x = 0
    local z = 0

    if ( math.abs( m13 ) < 0.9999999 ) then
        x = math.atan2( - m23, m33 );
        z = math.atan2( - m12, m11 );
    else
        x = math.atan2( m32, m22 );
        z = 0
    end
    return math.deg(x), math.deg(y), math.deg(z)
end

CustomQuaternion.fromEulerAngles = function(x, y, z)
    local this = {}

    local c1 = math.cos( x / 2 );
    local c2 = math.cos( y / 2 );
    local c3 = math.cos( z / 2 );

    local s1 = math.sin( x / 2 );
    local s2 = math.sin( y / 2 );
    local s3 = math.sin( z / 2 );

    this._x = s1 * c2 * c3 + c1 * s2 * s3;
    this._y = c1 * s2 * c3 - s1 * c2 * s3;
    this._z = c1 * c2 * s3 + s1 * s2 * c3;
    this._w = c1 * c2 * c3 - s1 * s2 * s3;

    local resQ = CustomQuaternion:new()
    resQ.x = this._x
    resQ.y = this._y
    resQ.z = this._z
    resQ.w = this._w

    return resQ
end





