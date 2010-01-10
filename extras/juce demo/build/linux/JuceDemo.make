# C++ Windowed Executable Makefile autogenerated by premake
# Don't edit this file! Instead edit `premake.lua` then rerun `make`

ifndef CONFIG
  CONFIG=Debug
endif

# if multiple archs are defined turn off automated dependency generation
DEPFLAGS := $(if $(word 2, $(TARGET_ARCH)), , -MMD)

ifeq ($(CONFIG),Debug)
  BINDIR := build
  LIBDIR := build
  OBJDIR := build/intermediate/Debug
  OUTDIR := build
  CPPFLAGS := $(DEPFLAGS) -D "LINUX=1" -D "DEBUG=1" -D "_DEBUG=1" -I "/usr/include" -I "/usr/include/freetype2"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -g -D_DEBUG -ggdb
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -mwindows -L"/usr/X11R6/lib/" -L"../../../../bin" -lfreetype -lpthread -lrt -lX11 -lGL -lGLU -lXinerama -lasound
  LDDEPS :=
  RESFLAGS := -D "LINUX=1" -D "DEBUG=1" -D "_DEBUG=1" -I "/usr/include" -I "/usr/include/freetype2"
  TARGET := jucedemo
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

ifeq ($(CONFIG),Release)
  BINDIR := build
  LIBDIR := build
  OBJDIR := build/intermediate/Release
  OUTDIR := build
  CPPFLAGS := $(DEPFLAGS) -D "LINUX=1" -D "NDEBUG=1" -I "/usr/include" -I "/usr/include/freetype2"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -O2
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -mwindows -s -L"/usr/X11R6/lib/" -L"../../../../bin" -lfreetype -lpthread -lrt -lX11 -lGL -lGLU -lXinerama -lasound
  LDDEPS :=
  RESFLAGS := -D "LINUX=1" -D "NDEBUG=1" -I "/usr/include" -I "/usr/include/freetype2"
  TARGET := jucedemo
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

OBJECTS := \
	$(OBJDIR)/BinaryData.o \
	$(OBJDIR)/juce_LibrarySource.o \
	$(OBJDIR)/ApplicationStartup.o \
	$(OBJDIR)/MainDemoWindow.o \
	$(OBJDIR)/AudioDemoLatencyPage.o \
	$(OBJDIR)/AudioDemoPlaybackPage.o \
	$(OBJDIR)/AudioDemoSetupPage.o \
	$(OBJDIR)/AudioDemoSynthPage.o \
	$(OBJDIR)/AudioDemoTabComponent.o \
	$(OBJDIR)/CameraDemo.o \
	$(OBJDIR)/DragAndDropDemo.o \
	$(OBJDIR)/FontsAndTextDemo.o \
	$(OBJDIR)/InterprocessCommsDemo.o \
	$(OBJDIR)/OpenGLDemo.o \
	$(OBJDIR)/QuickTimeDemo.o \
	$(OBJDIR)/TableDemo.o \
	$(OBJDIR)/ThreadingDemo.o \
	$(OBJDIR)/TreeViewDemo.o \
	$(OBJDIR)/WebBrowserDemo.o \
	$(OBJDIR)/CodeEditorDemo.o \
	$(OBJDIR)/RenderingTestComponent.o \
	$(OBJDIR)/AudioDemoRecordPage.o \
	$(OBJDIR)/WidgetsDemo.o \

MKDIR_TYPE := msdos
CMD := $(subst \,\\,$(ComSpec)$(COMSPEC))
ifeq (,$(CMD))
  MKDIR_TYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  MKDIR_TYPE := posix
endif
ifeq ($(MKDIR_TYPE),posix)
  CMD_MKBINDIR := mkdir -p $(BINDIR)
  CMD_MKLIBDIR := mkdir -p $(LIBDIR)
  CMD_MKOUTDIR := mkdir -p $(OUTDIR)
  CMD_MKOBJDIR := mkdir -p $(OBJDIR)
else
  CMD_MKBINDIR := $(CMD) /c if not exist $(subst /,\\,$(BINDIR)) mkdir $(subst /,\\,$(BINDIR))
  CMD_MKLIBDIR := $(CMD) /c if not exist $(subst /,\\,$(LIBDIR)) mkdir $(subst /,\\,$(LIBDIR))
  CMD_MKOUTDIR := $(CMD) /c if not exist $(subst /,\\,$(OUTDIR)) mkdir $(subst /,\\,$(OUTDIR))
  CMD_MKOBJDIR := $(CMD) /c if not exist $(subst /,\\,$(OBJDIR)) mkdir $(subst /,\\,$(OBJDIR))
endif

.PHONY: clean

$(OUTDIR)/$(TARGET): $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking JuceDemo
	-@$(CMD_MKBINDIR)
	-@$(CMD_MKLIBDIR)
	-@$(CMD_MKOUTDIR)
	@$(BLDCMD)

clean:
	@echo Cleaning JuceDemo
ifeq ($(MKDIR_TYPE),posix)
	-@rm -f $(OUTDIR)/$(TARGET)
	-@rm -rf $(OBJDIR)
else
	-@if exist $(subst /,\,$(OUTDIR)/$(TARGET)) del /q $(subst /,\,$(OUTDIR)/$(TARGET))
	-@if exist $(subst /,\,$(OBJDIR)) del /q $(subst /,\,$(OBJDIR))
	-@if exist $(subst /,\,$(OBJDIR)) rmdir /s /q $(subst /,\,$(OBJDIR))
endif

$(OBJDIR)/BinaryData.o: ../../src/BinaryData.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/juce_LibrarySource.o: ../../src/juce_LibrarySource.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/ApplicationStartup.o: ../../src/ApplicationStartup.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/MainDemoWindow.o: ../../src/MainDemoWindow.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/AudioDemoLatencyPage.o: ../../src/demos/AudioDemoLatencyPage.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/AudioDemoPlaybackPage.o: ../../src/demos/AudioDemoPlaybackPage.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/AudioDemoSetupPage.o: ../../src/demos/AudioDemoSetupPage.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/AudioDemoSynthPage.o: ../../src/demos/AudioDemoSynthPage.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/AudioDemoTabComponent.o: ../../src/demos/AudioDemoTabComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/CameraDemo.o: ../../src/demos/CameraDemo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/DragAndDropDemo.o: ../../src/demos/DragAndDropDemo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/FontsAndTextDemo.o: ../../src/demos/FontsAndTextDemo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/InterprocessCommsDemo.o: ../../src/demos/InterprocessCommsDemo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/OpenGLDemo.o: ../../src/demos/OpenGLDemo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/QuickTimeDemo.o: ../../src/demos/QuickTimeDemo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/TableDemo.o: ../../src/demos/TableDemo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/ThreadingDemo.o: ../../src/demos/ThreadingDemo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/TreeViewDemo.o: ../../src/demos/TreeViewDemo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/WebBrowserDemo.o: ../../src/demos/WebBrowserDemo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/CodeEditorDemo.o: ../../src/demos/CodeEditorDemo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/RenderingTestComponent.o: ../../src/demos/RenderingTestComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/AudioDemoRecordPage.o: ../../src/demos/AudioDemoRecordPage.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/WidgetsDemo.o: ../../src/demos/WidgetsDemo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)

