ADD_EXECUTABLE(simulation
    "${PROJECT_SOURCE_DIR}/Testbed/Framework/Main.cpp"
    "${PROJECT_SOURCE_DIR}/Testbed/Framework/DebugDraw.cpp"
    "${PROJECT_SOURCE_DIR}/Testbed/Framework/Test.cpp"
    "${PROJECT_SOURCE_DIR}/Testbed/Tests/TestEntries.cpp")
    
TARGET_LINK_LIBRARIES(simulation
    GLEW
    GL
    glfw
    IMGUI
    Box2D
    pthread)
