import { OrbitControls } from "@react-three/drei";

export default function Experience() {
return(<>
  {/* Setings */}
  <color attach={'background'} args={[0.1, 0.1, 0.1]}/>
  {/* Camera */}
  <OrbitControls/>
  {/* Scene */}
  <mesh>
    <boxGeometry/>
    <meshBasicMaterial color={'blue'}/>
  </mesh>  
</>)
}