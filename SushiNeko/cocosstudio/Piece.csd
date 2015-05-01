<GameProjectFile>
  <PropertyGroup Type="Node" Name="Piece" ID="40499455-8c7f-426a-8ac0-13549090f541" Version="2.2.5.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="96" Speed="1.0000" ActivedAnimationName="moveRight">
        <Timeline ActionTag="-1903783200" Property="Position">
          <PointFrame FrameIndex="1" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="48" X="800.0000" Y="0.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="49" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="96" X="-800.0000" Y="0.0000">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="-1903783200" Property="Scale">
          <ScaleFrame FrameIndex="1" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="48" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="49" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="96" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="-1903783200" Property="RotationSkew">
          <ScaleFrame FrameIndex="1" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="48" X="180.0000" Y="180.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="49" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="96" X="-180.0000" Y="-180.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="1905113067" Property="Position">
          <PointFrame FrameIndex="1" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="25" X="0.0000" Y="200.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="48" X="0.0000" Y="100.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="49" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="72" X="0.0000" Y="200.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="96" X="0.0000" Y="100.0000">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="1905113067" Property="Scale">
          <ScaleFrame FrameIndex="1" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="25" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="48" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="49" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="72" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="96" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="1905113067" Property="RotationSkew">
          <ScaleFrame FrameIndex="1" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="25" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="48" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="49" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="72" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="96" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
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
      <ObjectData Name="Node" CustomClassName="Piece" Tag="25" ctype="GameNodeObjectData">
        <Size />
        <Children>
          <AbstractNodeData Name="verticalMovement" ActionTag="1905113067" Tag="27" IconVisible="True" ctype="SingleNodeObjectData">
            <Size />
            <Children>
              <AbstractNodeData Name="roll" ActionTag="-1903783200" Tag="26" IconVisible="False" LeftMargin="-105.0000" RightMargin="-105.0000" TopMargin="-245.0000" ctype="SpriteObjectData">
                <Size X="210.0000" Y="245.0000" />
                <Children>
                  <AbstractNodeData Name="leftChopstick" ActionTag="1635623192" Tag="84" VisibleForFrame="False" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-210.0000" RightMargin="210.0000" TopMargin="101.5000" BottomMargin="52.5000" ctype="SpriteObjectData">
                    <Size X="210.0000" Y="91.0000" />
                    <AnchorPoint ScaleX="1.0000" ScaleY="0.5000" />
                    <Position Y="98.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition Y="0.4000" />
                    <PreSize X="1.0000" Y="0.3714" />
                    <FileData Type="Normal" Path="Assets/resources-phonehd/chopstick.png" Plist="" />
                    <BlendFunc Src="1" Dst="771" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rightChopstick" ActionTag="-2068788225" Tag="89" VisibleForFrame="False" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="210.0000" RightMargin="-210.0000" TopMargin="101.5000" BottomMargin="52.5000" FlipX="True" ctype="SpriteObjectData">
                    <Size X="210.0000" Y="91.0000" />
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="210.0000" Y="98.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="1.0000" Y="0.4000" />
                    <PreSize X="1.0000" Y="0.3714" />
                    <FileData Type="Normal" Path="Assets/resources-phonehd/chopstick.png" Plist="" />
                    <BlendFunc Src="1" Dst="771" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" />
                <Position />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition />
                <PreSize />
                <FileData Type="Normal" Path="Assets/resources-phonehd/roll.png" Plist="" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint />
            <Position />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition />
            <PreSize />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameProjectFile>