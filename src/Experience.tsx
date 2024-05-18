import { OrbitControls } from "@react-three/drei";

export default function Experience() {
return(<>
  {/* Setings */}
  <color attach={'background'} args={[0.89,1.00,0.80]}/>
  {/* Camera */}
  <OrbitControls/>
  {/* Scene */}
  <mesh>
    <boxGeometry/>
    <meshNormalMaterial/>
  </mesh>  
</>)
}
