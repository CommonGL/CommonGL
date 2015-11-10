vec3 transformPoint(const in vec3 samplePoint, const in float frequency, const in float amplitude)
// Apply a spatial transformation to a world space point
{
  return samplePoint + amplitude * vec3(samplePoint.x * sin(frequency * samplePoint.z),
                                        samplePoint.y * cos(frequency * samplePoint.z),
                                        0);
}

// needed for glslify
#pragma glslify: export(transformPoint)
