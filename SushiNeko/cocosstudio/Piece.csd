<GameProjectFile>
  <PropertyGroup Type="Node" Name="Piece" ID="40499455-8c7f-426a-8ac0-13549090f541" Version="2.2.1.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="48" Speed="1.0000" ActivedAnimationName="moveRight">
        <Timeline ActionTag="-1903783200" Property="Position">
          <PointFrame FrameIndex="1" X="0.0000" Y="0.0000" />
          <PointFrame FrameIndex="25" X="408.5107" Y="200.0000" />
          <PointFrame FrameIndex="48" X="800.0000" Y="245.0000" />
        </Timeline>
        <Timeline ActionTag="-1903783200" Property="Scale">
          <ScaleFrame FrameIndex="1" X="1.0000" Y="1.0000" />
          <ScaleFrame FrameIndex="25" X="1.0000" Y="1.0000" />
          <ScaleFrame FrameIndex="48" X="1.0000" Y="1.0000" />
        </Timeline>
        <Timeline ActionTag="-1903783200" Property="RotationSkew">
          <ScaleFrame FrameIndex="1" X="0.0000" Y="0.0000" />
          <ScaleFrame FrameIndex="25" X="91.9149" Y="91.9149" />
          <ScaleFrame FrameIndex="48" X="180.0000" Y="180.0000" />
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="default" StartIndex="0" EndIndex="0">
          <RenderColor A="150" R="0" G="139" B="139" />
        </AnimationInfo>
        <AnimationInfo Name="moveRight" StartIndex="1" EndIndex="48">
          <RenderColor A="150" R="72" G="209" B="204" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Node" FrameEvent="" Tag="25" ctype="SingleNodeObjectData">
        <Position X="0.0000" Y="0.0000" />
        <Scale ScaleX="1.0000" ScaleY="1.0000" />
        <AnchorPoint />
        <CColor A="255" R="255" G="255" B="255" />
        <Size X="0.0000" Y="0.0000" />
        <PrePosition X="0.0000" Y="0.0000" />
        <PreSize X="0.0000" Y="0.0000" />
        <Children>
          <NodeObjectData Name="Roll" ActionTag="-1903783200" Rotation="180.0000" RotationSkewX="180.0000" RotationSkewY="180.0000" FrameEvent="" Tag="26" LeftMargin="695.0000" RightMargin="-905.0000" TopMargin="-490.0000" BottomMargin="245.0000" ctype="SpriteObjectData">
            <Position X="800.0000" Y="245.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleX="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="210.0000" Y="245.0000" />
            <PrePosition X="0.0000" Y="0.0000" />
            <PreSize X="0.0000" Y="0.0000" />
            <FileData Type="Normal" Path="Assets/resources-phonehd/roll.png" />
          </NodeObjectData>
        </Children>
      </ObjectData>
    </Content>
    <CameraPosition ValueX="0.0000" ValueY="5.0000" ValueZ="-1.0000" />
    <CameraRotation ValueX="0.0000" ValueY="0.0000" ValueZ="0.0000" />
  </Content>
</GameProjectFile>