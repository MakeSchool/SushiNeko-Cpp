<GameProjectFile>
  <PropertyGroup Type="Node" Name="Piece" ID="40499455-8c7f-426a-8ac0-13549090f541" Version="2.2.1.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="96" Speed="1.0000" ActivedAnimationName="moveLeft">
        <Timeline ActionTag="-1903783200" Property="Position">
          <PointFrame FrameIndex="1" X="0.0000" Y="0.0000" />
          <PointFrame FrameIndex="48" X="800.0000" Y="0.0000" />
          <PointFrame FrameIndex="49" X="0.0000" Y="0.0000" />
          <PointFrame FrameIndex="96" X="-800.0000" Y="0.0000" />
        </Timeline>
        <Timeline ActionTag="-1903783200" Property="Scale">
          <ScaleFrame FrameIndex="1" X="1.0000" Y="1.0000" />
          <ScaleFrame FrameIndex="48" X="1.0000" Y="1.0000" />
          <ScaleFrame FrameIndex="49" X="1.0000" Y="1.0000" />
          <ScaleFrame FrameIndex="96" X="1.0000" Y="1.0000" />
        </Timeline>
        <Timeline ActionTag="-1903783200" Property="RotationSkew">
          <ScaleFrame FrameIndex="1" X="0.0000" Y="0.0000" />
          <ScaleFrame FrameIndex="48" X="180.0000" Y="180.0000" />
          <ScaleFrame FrameIndex="49" X="0.0000" Y="0.0000" />
          <ScaleFrame FrameIndex="96" X="-180.0000" Y="-180.0000" />
        </Timeline>
        <Timeline ActionTag="1905113067" Property="Position">
          <PointFrame FrameIndex="1" X="0.0000" Y="0.0000" />
          <PointFrame FrameIndex="25" X="0.0000" Y="200.0000" />
          <PointFrame FrameIndex="48" X="0.0000" Y="100.0000" />
          <PointFrame FrameIndex="49" X="0.0000" Y="0.0000" />
          <PointFrame FrameIndex="72" X="0.0000" Y="200.0000" />
          <PointFrame FrameIndex="96" X="0.0000" Y="100.0000" />
        </Timeline>
        <Timeline ActionTag="1905113067" Property="Scale">
          <ScaleFrame FrameIndex="1" X="1.0000" Y="1.0000" />
          <ScaleFrame FrameIndex="25" X="1.0000" Y="1.0000" />
          <ScaleFrame FrameIndex="48" X="1.0000" Y="1.0000" />
          <ScaleFrame FrameIndex="49" X="1.0000" Y="1.0000" />
          <ScaleFrame FrameIndex="72" X="1.0000" Y="1.0000" />
          <ScaleFrame FrameIndex="96" X="1.0000" Y="1.0000" />
        </Timeline>
        <Timeline ActionTag="1905113067" Property="RotationSkew">
          <ScaleFrame FrameIndex="1" X="0.0000" Y="0.0000" />
          <ScaleFrame FrameIndex="25" X="0.0000" Y="0.0000" />
          <ScaleFrame FrameIndex="48" X="0.0000" Y="0.0000" />
          <ScaleFrame FrameIndex="49" X="0.0000" Y="0.0000" />
          <ScaleFrame FrameIndex="72" X="0.0000" Y="0.0000" />
          <ScaleFrame FrameIndex="96" X="0.0000" Y="0.0000" />
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="default" StartIndex="0" EndIndex="0">
          <RenderColor A="255" R="0" G="139" B="139" />
        </AnimationInfo>
        <AnimationInfo Name="moveRight" StartIndex="1" EndIndex="48">
          <RenderColor A="255" R="72" G="209" B="204" />
        </AnimationInfo>
        <AnimationInfo Name="moveLeft" StartIndex="49" EndIndex="96">
          <RenderColor A="255" R="186" G="85" B="211" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Node" FrameEvent="" CustomClassName="Piece" Tag="25" ctype="SingleNodeObjectData">
        <Position X="0.0000" Y="0.0000" />
        <Scale ScaleX="1.0000" ScaleY="1.0000" />
        <AnchorPoint />
        <CColor A="255" R="255" G="255" B="255" />
        <Size X="0.0000" Y="0.0000" />
        <PrePosition X="0.0000" Y="0.0000" />
        <PreSize X="0.0000" Y="0.0000" />
        <Children>
          <NodeObjectData Name="verticalMovement" ActionTag="1905113067" FrameEvent="" Tag="27" IconVisible="True" ctype="SingleNodeObjectData">
            <Position X="0.0000" Y="0.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="0.0000" Y="0.0000" />
            <PrePosition X="0.0000" Y="0.0000" />
            <PreSize X="0.0000" Y="0.0000" />
            <Children>
              <NodeObjectData Name="roll" ActionTag="-1903783200" FrameEvent="" Tag="26" LeftMargin="-105.0000" RightMargin="-105.0000" TopMargin="-245.0000" ctype="SpriteObjectData">
                <Position X="0.0000" Y="0.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <AnchorPoint ScaleX="0.5000" />
                <CColor A="255" R="255" G="255" B="255" />
                <Size X="210.0000" Y="245.0000" />
                <PrePosition X="0.0000" Y="0.0000" />
                <PreSize X="0.0000" Y="0.0000" />
                <Children>
                  <NodeObjectData Name="leftChopstick" ActionTag="1635623192" VisibleForFrame="False" FrameEvent="" Tag="84" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-210.0000" RightMargin="210.0000" TopMargin="101.5000" BottomMargin="52.5000" ctype="SpriteObjectData">
                    <Position X="0.0000" Y="98.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <AnchorPoint ScaleX="1.0000" ScaleY="0.5000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <Size X="210.0000" Y="91.0000" />
                    <PrePosition X="0.0000" Y="0.4000" />
                    <PreSize X="1.0000" Y="0.3714" />
                    <FileData Type="Normal" Path="Assets/resources-phonehd/chopstick.png" />
                  </NodeObjectData>
                  <NodeObjectData Name="rightChopstick" ActionTag="-2068788225" VisibleForFrame="False" FrameEvent="" Tag="89" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="210.0000" RightMargin="-210.0000" TopMargin="101.5000" BottomMargin="52.5000" FlipX="True" ctype="SpriteObjectData">
                    <Position X="210.0000" Y="98.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <AnchorPoint ScaleY="0.5000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <Size X="210.0000" Y="91.0000" />
                    <PrePosition X="1.0000" Y="0.4000" />
                    <PreSize X="1.0000" Y="0.3714" />
                    <FileData Type="Normal" Path="Assets/resources-phonehd/chopstick.png" />
                  </NodeObjectData>
                </Children>
                <FileData Type="Normal" Path="Assets/resources-phonehd/roll.png" />
              </NodeObjectData>
            </Children>
          </NodeObjectData>
        </Children>
      </ObjectData>
    </Content>
    <CameraPosition ValueX="0.0000" ValueY="5.0000" ValueZ="-1.0000" />
    <CameraRotation ValueX="0.0000" ValueY="0.0000" ValueZ="0.0000" />
  </Content>
</GameProjectFile>