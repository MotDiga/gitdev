##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=cherno
ConfigurationName      :=Debug
WorkspacePath          :=/home/mohamed/Documents/cppdev/chernocodelite
ProjectPath            :=/home/mohamed/Documents/cppdev/chernocodelite
IntermediateDirectory  :=bin-obj/cherno-x86_64-Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Mohamed
Date                   :=30/08/22
CodeLitePath           :=/home/mohamed/.codelite
LinkerName             :=clang++
SharedObjectLinkerName :=clang++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=bin/cherno-x86_64-Debug/cherno
Preprocessors          :=$(PreprocessorSwitch)_DEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="cherno.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -m64
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)include $(IncludeSwitch)src 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := clang++
CC       := clang
CXXFLAGS :=  -m64 -g $(Preprocessors)
CFLAGS   :=  -m64 -g $(Preprocessors)
ASFLAGS  := 
AS       := llvm-as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/src_Main.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d bin-obj/cherno-x86_64-Debug || $(MakeDirCommand) bin-obj/cherno-x86_64-Debug


$(IntermediateDirectory)/.d:
	@test -d bin-obj/cherno-x86_64-Debug || $(MakeDirCommand) bin-obj/cherno-x86_64-Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_Main.cpp$(ObjectSuffix): src/Main.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/mohamed/Documents/cppdev/chernocodelite/src/Main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Main.cpp$(PreprocessSuffix): src/Main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Main.cpp$(PreprocessSuffix) src/Main.cpp

##
## Clean
##
clean:
	$(RM) -r bin-obj/cherno-x86_64-Debug/


