vec3 directionalLight(vec3 lightColor, float lightIntensity, vec3 normal, vec3 lightPosition, vec3 viewDirection, float specularPower)
{
    vec3 lightDirection = normalize(lightPosition);
    vec3 lightReflection = reflect(-lightDirection, normal);

    // shading
    float shading = dot(normal, lightDirection); // 1 if opposite, // black if saem dir
    shading = max(0.0, shading);
    // specular
    float specular = -dot(lightReflection, viewDirection); // Invert because -1 (28:24)
    specular = max(0.0, specular); // negative messing up the back
    specular = pow(specular, specularPower);
    return lightColor * lightIntensity * shading + (lightColor * specular * lightIntensity);
    // can be simplified:
    // return lightColor * lightIntensity * (shading + specular);
    // return vec3(shading);
    // return vec3(specular);
}