<GameProjectFile>
  <PropertyGroup Type="Scene" Name="MainScene" ID="a2ee0952-26b5-49ae-8bf9-4f1d6279b798" Version="2.2.6.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="150" Speed="1.0000" ActivedAnimationName="gameOver">
        <Timeline ActionTag="-225586348" Property="VisibleForFrame">
          <BoolFrame FrameIndex="1" Tween="False" Value="False" />
          <BoolFrame FrameIndex="61" Tween="False" Value="True" />
        </Timeline>
        <Timeline ActionTag="-1223049060" Property="VisibleForFrame">
          <BoolFrame FrameIndex="1" Tween="False" Value="False" />
          <BoolFrame FrameIndex="61" Tween="False" Value="True" />
        </Timeline>
        <Timeline ActionTag="-1223049060" Property="Position">
          <PointFrame FrameIndex="61" X="576.0000" Y="84.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="90" X="640.0000" Y="84.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="120" X="576.0000" Y="84.0000">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="1169502385" Property="VisibleForFrame">
          <BoolFrame FrameIndex="1" Tween="False" Value="False" />
          <BoolFrame FrameIndex="61" Tween="False" Value="True" />
        </Timeline>
        <Timeline ActionTag="1169502385" Property="Position">
          <PointFrame FrameIndex="61" X="64.0000" Y="84.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="90" X="0.0000" Y="84.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="120" X="64.0000" Y="84.0000">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="-1096669189" Property="VisibleForFrame">
          <BoolFrame FrameIndex="1" Tween="False" Value="False" />
        </Timeline>
        <Timeline ActionTag="1515584637" Property="Position">
          <PointFrame FrameIndex="1" X="320.0000" Y="1344.0000">
            <EasingData Type="5" />
          </PointFrame>
          <PointFrame FrameIndex="50" X="320.0000" Y="767.9999">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="1515584637" Property="VisibleForFrame">
          <BoolFrame FrameIndex="0" Tween="False" Value="False" />
          <BoolFrame FrameIndex="1" Tween="False" Value="True" />
          <BoolFrame FrameIndex="61" Tween="False" Value="False" />
        </Timeline>
        <Timeline ActionTag="1590920864" Property="Position">
          <PointFrame FrameIndex="121" X="320.0000" Y="1920.0000">
            <EasingData Type="20" />
          </PointFrame>
          <PointFrame FrameIndex="150" X="320.0000" Y="960.0000">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="1590920864" Property="VisibleForFrame">
          <BoolFrame FrameIndex="0" Tween="False" Value="False" />
          <BoolFrame FrameIndex="121" Tween="False" Value="True" />
        </Timeline>
        <Timeline ActionTag="735938060" Property="VisibleForFrame">
          <BoolFrame FrameIndex="0" Tween="False" Value="True" />
          <BoolFrame FrameIndex="1" Tween="False" Value="False" />
          <BoolFrame FrameIndex="61" Tween="False" Value="False" />
          <BoolFrame FrameIndex="121" Tween="False" Value="True" />
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="default" StartIndex="0" EndIndex="0">
          <RenderColor A="255" R="0" G="255" B="127" />
        </AnimationInfo>
        <AnimationInfo Name="title" StartIndex="1" EndIndex="55">
          <RenderColor A="255" R="100" G="149" B="237" />
        </AnimationInfo>
        <AnimationInfo Name="ready" StartIndex="61" EndIndex="120">
          <RenderColor A="255" R="255" G="0" B="255" />
        </AnimationInfo>
        <AnimationInfo Name="gameOver" StartIndex="121" EndIndex="151">
          <RenderColor A="255" R="250" G="128" B="114" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Scene" ctype="GameNodeObjectData">
        <Size X="640.0000" Y="960.0000" />
        <Children>
          <AbstractNodeData Name="background" ActionTag="263372952" Tag="30" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-64.0000" RightMargin="-64.0000" TopMargin="-176.0000" ctype="SpriteObjectData">
            <Size X="768.0000" Y="1136.0000" />
            <AnchorPoint ScaleX="0.5000" />
            <Position X="320.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" />
            <PreSize X="1.2000" Y="1.1833" />
            <FileData Type="Normal" Path="Assets/Images/resources-2x/background.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="piece" ActionTag="1035923380" Tag="31" IconVisible="True" PositionPercentXEnabled="True" LeftMargin="320.0000" RightMargin="320.0000" TopMargin="668.0000" BottomMargin="292.0000" InnerActionSpeed="1.0000" ctype="ProjectNodeObjectData">
            <Size />
            <AnchorPoint />
            <Position X="320.0000" Y="292.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.3042" />
            <PreSize />
            <FileData Type="Normal" Path="Piece.csd" Plist="" />
          </AbstractNodeData>
          <AbstractNodeData Name="pieceNode" ActionTag="-775825522" Tag="95" IconVisible="True" PositionPercentXEnabled="True" LeftMargin="320.0000" RightMargin="320.0000" TopMargin="554.0000" BottomMargin="406.0000" ctype="SingleNodeObjectData">
            <Size />
            <AnchorPoint />
            <Position X="320.0000" Y="406.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.4229" />
            <PreSize />
          </AbstractNodeData>
          <AbstractNodeData Name="character" ActionTag="951755214" Tag="35" IconVisible="True" PositionPercentXEnabled="True" LeftMargin="320.0000" RightMargin="320.0000" TopMargin="730.0000" BottomMargin="230.0000" InnerActionSpeed="1.0000" ctype="ProjectNodeObjectData">
            <Size />
            <AnchorPoint />
            <Position X="320.0000" Y="230.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.2396" />
            <PreSize />
            <FileData Type="Normal" Path="Character.csd" Plist="" />
          </AbstractNodeData>
          <AbstractNodeData Name="lifeBG" ActionTag="-225586348" Tag="46" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="166.5000" RightMargin="166.5000" TopMargin="19.2000" BottomMargin="858.8000" ctype="SpriteObjectData">
            <Size X="307.0000" Y="82.0000" />
            <Children>
              <AbstractNodeData Name="lifeBar" ActionTag="523644030" Tag="47" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="17.0000" RightMargin="18.0000" TopMargin="16.5000" BottomMargin="16.5000" ctype="SpriteObjectData">
                <Size X="272.0000" Y="49.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="17.0000" Y="41.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.0554" Y="0.5000" />
                <PreSize X="0.8860" Y="0.5976" />
                <FileData Type="Normal" Path="Assets/Images/resources-2x/life.png" Plist="" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="1.0000" />
            <Position X="320.0000" Y="940.8000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.9800" />
            <PreSize X="0.4797" Y="0.0854" />
            <FileData Type="Normal" Path="Assets/Images/resources-2x/life_bg.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="tapRight" ActionTag="-1223049060" Tag="48" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="387.0000" RightMargin="64.0000" TopMargin="837.5000" BottomMargin="45.5000" ctype="SpriteObjectData">
            <Size X="189.0000" Y="77.0000" />
            <AnchorPoint ScaleX="1.0000" ScaleY="0.5000" />
            <Position X="576.0000" Y="84.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.9000" Y="0.0875" />
            <PreSize X="0.2953" Y="0.0802" />
            <FileData Type="Normal" Path="Assets/Images/resources-2x/tap_right.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="tapLeft" ActionTag="1169502385" Tag="52" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="64.0000" RightMargin="387.0000" TopMargin="837.5000" BottomMargin="45.5000" ctype="SpriteObjectData">
            <Size X="189.0000" Y="77.0000" />
            <AnchorPoint ScaleY="0.5000" />
            <Position X="64.0000" Y="84.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.1000" Y="0.0875" />
            <PreSize X="0.2953" Y="0.0802" />
            <FileData Type="Normal" Path="Assets/Images/resources-2x/tap_left.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="scoreLabel" ActionTag="-1096669189" Tag="101" VisibleForFrame="False" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="293.0000" RightMargin="293.0000" TopMargin="278.5000" BottomMargin="566.5000" FontSize="100" LabelText="0&#xA;" OutlineSize="5" ctype="TextObjectData">
            <Size X="54.0000" Y="115.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="320.0000" Y="624.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.6500" />
            <PreSize X="0.1422" Y="0.0240" />
            <FontResource Type="Normal" Path="Assets/Fonts/Game of Three.ttf" Plist="" />
            <OutlineColor A="255" R="0" G="0" B="0" />
            <ShadowColor A="255" R="255" G="127" B="80" />
          </AbstractNodeData>
          <AbstractNodeData Name="title" ActionTag="1515584637" Tag="24" VisibleForFrame="False" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="88.5000" RightMargin="88.5000" TopMargin="192.0001" BottomMargin="478.9999" ctype="SpriteObjectData">
            <Size X="463.0000" Y="289.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="1.0000" />
            <Position X="320.0000" Y="767.9999" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.8000" />
            <PreSize X="0.0719" Y="0.0479" />
            <FileData Type="Normal" Path="Assets/Images/resources-2x/title.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="mat" ActionTag="1590920864" Tag="51" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-64.0000" RightMargin="-64.0000" TopMargin="-960.0000" BottomMargin="784.0000" ctype="SpriteObjectData">
            <Size X="768.0000" Y="1136.0000" />
            <Children>
              <AbstractNodeData Name="gameOver" ActionTag="1926868742" Tag="52" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="152.5000" RightMargin="152.5000" TopMargin="113.6000" BottomMargin="728.4000" ctype="SpriteObjectData">
                <Size X="463.0000" Y="294.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="1.0000" />
                <Position X="384.0000" Y="1022.4000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.9000" />
                <PreSize X="1.0000" Y="1.0000" />
                <FileData Type="Normal" Path="Assets/Images/resources-2x/gameOver.png" Plist="" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
              <AbstractNodeData Name="gameOverScore" ActionTag="1464353432" Tag="91" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="239.0000" RightMargin="239.0000" TopMargin="487.7800" BottomMargin="533.2200" FontSize="100" LabelText="Score&#xA;" HorizontalAlignmentType="HT_Center" ctype="TextObjectData">
                <Size X="290.0000" Y="115.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="384.0000" Y="590.7200" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.5200" />
                <PreSize X="5.6739" Y="4.9130" />
                <FontResource Type="Normal" Path="Assets/Fonts/Game of Three.ttf" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="255" G="127" B="80" />
              </AbstractNodeData>
              <AbstractNodeData Name="gameOverScoreLabel" ActionTag="-1441433360" Tag="54" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="357.0000" RightMargin="357.0000" TopMargin="578.6600" BottomMargin="442.3400" FontSize="100" LabelText="0&#xA;" HorizontalAlignmentType="HT_Center" ctype="TextObjectData">
                <Size X="54.0000" Y="115.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="384.0000" Y="499.8400" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.4400" />
                <PreSize X="1.1957" Y="4.9130" />
                <FontResource Type="Normal" Path="Assets/Fonts/Game of Three.ttf" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="255" G="127" B="80" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="1.0000" />
            <Position X="320.0000" Y="1920.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="2.0000" />
            <PreSize X="0.0719" Y="0.0479" />
            <FileData Type="Normal" Path="Assets/Images/resources-2x/mat.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="play" ActionTag="735938060" Tag="45" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="218.5000" RightMargin="218.5000" TopMargin="813.0000" BottomMargin="21.0000" FontSize="14" Scale9Width="203" Scale9Height="126" ctype="ButtonObjectData">
            <Size X="203.0000" Y="126.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="320.0000" Y="84.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.0875" />
            <PreSize X="0.3172" Y="0.1312" />
            <TextColor A="255" R="65" G="65" B="70" />
            <PressedFileData Type="Normal" Path="Assets/Images/resources-2x/buttonPressed.png" Plist="" />
            <NormalFileData Type="Normal" Path="Assets/Images/resources-2x/button.png" Plist="" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="255" G="127" B="80" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameProjectFile>