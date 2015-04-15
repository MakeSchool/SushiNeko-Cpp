<GameProjectFile>
  <PropertyGroup Type="Node" Name="Character" ID="772772db-fc2d-4725-ba35-dd07c393c546" Version="2.2.1.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="2" Speed="1.0000" ActivedAnimationName="default">
        <Timeline ActionTag="1871043589" Property="Position">
          <PointFrame FrameIndex="0" X="0.0000" Y="0.0000" />
          <PointFrame FrameIndex="1" X="0.0000" Y="0.0000" />
          <PointFrame FrameIndex="2" X="0.0000" Y="0.0000" />
        </Timeline>
        <Timeline ActionTag="1871043589" Property="Scale">
          <ScaleFrame FrameIndex="0" X="1.0000" Y="1.0000" />
          <ScaleFrame FrameIndex="1" X="1.0000" Y="1.0000" />
          <ScaleFrame FrameIndex="2" X="1.0000" Y="1.0000" />
        </Timeline>
        <Timeline ActionTag="1871043589" Property="RotationSkew">
          <ScaleFrame FrameIndex="0" X="0.0000" Y="0.0000" />
          <ScaleFrame FrameIndex="1" X="0.0000" Y="0.0000" />
          <ScaleFrame FrameIndex="2" X="0.0000" Y="0.0000" />
        </Timeline>
        <Timeline ActionTag="1871043589" Property="FileData">
          <TextureFrame FrameIndex="0">
            <TextureFile Type="Normal" Path="Assets/resources-phonehd/character1.png" />
          </TextureFrame>
          <TextureFrame FrameIndex="1">
            <TextureFile Type="Normal" Path="Assets/resources-phonehd/character2.png" />
          </TextureFrame>
          <TextureFrame FrameIndex="2">
            <TextureFile Type="Normal" Path="Assets/resources-phonehd/character3.png" />
          </TextureFrame>
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="chop" StartIndex="1" EndIndex="2">
          <RenderColor A="150" R="144" G="238" B="144" />
        </AnimationInfo>
        <AnimationInfo Name="default" StartIndex="0" EndIndex="0">
          <RenderColor A="150" R="112" G="128" B="144" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Node" FrameEvent="" ctype="SingleNodeObjectData">
        <Position X="0.0000" Y="0.0000" />
        <Scale ScaleX="1.0000" ScaleY="1.0000" />
        <AnchorPoint />
        <CColor A="255" R="255" G="255" B="255" />
        <Size X="0.0000" Y="0.0000" />
        <PrePosition X="0.0000" Y="0.0000" />
        <PreSize X="0.0000" Y="0.0000" />
        <Children>
          <NodeObjectData Name="Cat" ActionTag="1871043589" FrameEvent="" Tag="4" LeftMargin="-365.0000" TopMargin="-217.0000" ctype="SpriteObjectData">
            <Position X="0.0000" Y="0.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleX="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="365.0000" Y="217.0000" />
            <PrePosition X="0.0000" Y="0.0000" />
            <PreSize X="0.0000" Y="0.0000" />
            <FileData Type="Normal" Path="Assets/resources-phonehd/character1.png" />
          </NodeObjectData>
        </Children>
      </ObjectData>
    </Content>
    <CameraPosition ValueX="0.0000" ValueY="5.0000" ValueZ="-1.0000" />
    <CameraRotation ValueX="0.0000" ValueY="0.0000" ValueZ="0.0000" />
  </Content>
</GameProjectFile>