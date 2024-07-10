import { Canvas } from "@react-three/fiber"
import Experience from "./Experience"
import { OrbitControls } from "@react-three/drei"
function App() {
  return (
    <Canvas>
      <color attach={'background'} args={[0.89,1.00,0.80]}/>
      <OrbitControls/>
      <Experience/>
    </Canvas>
  )
}

export default App
