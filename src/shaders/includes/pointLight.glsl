vec3 pointLight(vec3 lightColor, float lightIntensity, vec3 normal, vec3 lightPosition, vec3 viewDirection, float specularPower, vec3 position, float lightDecay)
{
    vec3 lightDelta = lightPosition - position; // from light to fragment
    float lightDistance = length(lightDelta);
    vec3 lightDirection = normalize(lightDelta);
    vec3 lightReflection = reflect(-lightDirection, normal);

    // shading
    float shading = dot(normal, lightDirection); // 1 if opposite, // black if saem dir
    shading = max(0.0, shading);
    // specular
    float specular = -dot(lightReflection, viewDirection); // Invert because -1 (28:24)
    specular = max(0.0, specular); // negative messing up the back
    specular = pow(specular, specularPower);

    // Decay
    float decay = 1.0 - lightDistance * lightDecay;
    decay = max(0.0, decay); // make sure it does not go below 0
    return lightColor * lightIntensity * decay * shading + (lightColor * specular * lightIntensity);
    // return vec3(decay);
}
