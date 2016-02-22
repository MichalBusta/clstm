

if(ANDROID)


  # --------------------------------------------------------------------------------------------
  #  Installation for Android ndk-build makefile:  FastText.mk
  #  Part 1/2: ${BIN_DIR}/clstm.mk              -> For use *without* "make install"
  # -------------------------------------------------------------------------------------------

  # build the list of libs and dependencies for all modules
  set(CLSTM_3RDPARTY_COMPONENTS_CONFIGMAKE "clstm" )

  # -------------------------------------------------------------------------------------------
  #  Part 1/2: ${BIN_DIR}/FastText.mk              -> For use *without* "make install"
  # -------------------------------------------------------------------------------------------
  set(CLSTM_INCLUDE_DIRS_CONFIGCMAKE "\"${CMAKE_SOURCE_DIR}\"")
  set(CLSTM_LIBS_DIR_CONFIGCMAKE "\$(CLSTM_THIS_DIR)/lib/\$(TARGET_ARCH_ABI)")

  configure_file("${CMAKE_SOURCE_DIR}/cmake/templates/clstm.mk.in" "${CMAKE_BINARY_DIR}/clstm.mk" IMMEDIATE @ONLY)

endif(ANDROID)
