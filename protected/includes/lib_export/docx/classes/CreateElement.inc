<?php
class CreateElement {
	const MATHNAMESPACEWORD = 'm';
	const NAMESPACEWORD = 'w';
	protected $_xml;
	public function __construct() {
	}
	public function __destruct() {
	}
	public function __toString() {
	}
	protected function cleanTemplate() {
		$this->_xml = preg_replace ( '/__[A-Z]+__/', '', $this->_xml );
	}
	protected function cleanTemplateFirstRPR() {
		$this->_xml = preg_replace ( '/__GENERATERPR__/', '', $this->_xml, 1 );
	}
	protected function generateALIGN($align) {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':align>' . $align . '</' . CreateImage::NAMESPACEWORD . ':align>';
		$this->_xml = str_replace ( '__GENERATEPOSITION__', $xml, $this->_xml );
	}
	protected function generateANCHOR($behindDoc = 0, $distT = '0', $distB = '0', $distL = '0', $distR = '0', $simplePos = 0, $relativeHeight = '0', $locked = 0, $layoutInCell = 1, $allowOverlap = 1) {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':anchor distT="' . $distT . '" distB="' . $distB . '" distL="' . $distL . '" distR="' . $distR . '" simplePos="' . $simplePos . '" relativeHeight="' . $relativeHeight . '" behindDoc="' . $behindDoc . '" locked="' . $locked . '" layoutInCell="' . $layoutInCell . '" allowOverlap="' . $allowOverlap . '">__GENERATEINLINE__</' . CreateImage::NAMESPACEWORD . ':anchor>';
		$this->_xml = str_replace ( '__GENERATEDRAWING__', $xml, $this->_xml );
	}
	protected function generateAVLST() {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':avLst></' . CreateImage::NAMESPACEWORD1 . ':avLst>__GENERATEPRSTGEOM__';
		$this->_xml = str_replace ( '__GENERATEPRSTGEOM__', $xml, $this->_xml );
	}
	protected function generateB($val = 'off') {
		if ($val == 'single') {
			$val = 'on';
		}
		$xml = '<' . CreateElement::NAMESPACEWORD . ':b ' . CreateElement::NAMESPACEWORD . ':val="' . $val . '"></' . CreateElement::NAMESPACEWORD . ':b>__GENERATERPR__';
		$this->_xml = str_replace ( '__GENERATERPR__', $xml, $this->_xml );
	}
	protected function generateBCS() {
		$xml = '<' . CreateElement::NAMESPACEWORD . ':bCs></' . CreateElement::NAMESPACEWORD . ':bCs>__GENERATERPR__';
		$this->_xml = str_replace ( '__GENERATERPR__', $xml, $this->_xml );
	}
	protected function generateBLIP($cstate = 'print') {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':blip r:embed="rId' . $this->getRId () . '" cstate="' . $cstate . '"></' . CreateImage::NAMESPACEWORD1 . ':blip>__GENERATEBLIPFILL__';
		$this->_xml = str_replace ( '__GENERATEBLIPFILL__', $xml, $this->_xml );
	}
	protected function generateBLIPFILL() {
		$xml = '<' . CreateImage::NAMESPACEWORD2 . ':blipFill>__GENERATEBLIPFILL__</' . CreateImage::NAMESPACEWORD2 . ':blipFill>__GENERATEPIC__';
		$this->_xml = str_replace ( '__GENERATEPIC__', $xml, $this->_xml );
	}
	protected function generateBR($type = '') {
		$xml = '<' . CreateElement::NAMESPACEWORD . ':br ' . CreateElement::NAMESPACEWORD . ':type="' . $type . '"></' . CreateElement::NAMESPACEWORD . ':br>';
		$this->_xml = str_replace ( '__GENERATER__', $xml, $this->_xml );
	}
	protected function generateCNVGRAPHICFRAMEPR() {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':cNvGraphicFramePr>__GENERATECNVGRAPHICFRAMEPR__</' . CreateImage::NAMESPACEWORD . ':cNvGraphicFramePr>__GENERATEINLINE__';
		$this->_xml = str_replace ( '__GENERATEINLINE__', $xml, $this->_xml );
	}
	protected function generateCNVPICPR() {
		$xml = '<' . CreateImage::NAMESPACEWORD2 . ':cNvPicPr></' . CreateImage::NAMESPACEWORD2 . ':cNvPicPr>__GENERATENVPICPR__';
		$this->_xml = str_replace ( '__GENERATENVPICPR__', $xml, $this->_xml );
	}
	protected function generateCNVPR($id = '0') {
		$xml = '<' . CreateImage::NAMESPACEWORD2 . ':cNvPr id="' . $id . '" name="' . $this->getName () . '"></' . CreateImage::NAMESPACEWORD2 . ':cNvPr>__GENERATENVPICPR__';
		$this->_xml = str_replace ( '__GENERATENVPICPR__', $xml, $this->_xml );
	}
	protected function generateDOCPR($id = "1", $name = "0 Imagen") {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':docPr id="' . $id . '" name="' . $name . '" descr="' . $this->getName () . '"></' . CreateImage::NAMESPACEWORD . ':docPr>__GENERATEINLINE__';
		$this->_xml = str_replace ( '__GENERATEINLINE__', $xml, $this->_xml );
	}
	protected function generateDRAWING() {
		$xml = '<' . CreateElement::NAMESPACEWORD . ':drawing>__GENERATEDRAWING__</' . CreateElement::NAMESPACEWORD . ':drawing>';
		$this->_xml = str_replace ( '__GENERATER__', $xml, $this->_xml );
	}
	protected function generateEFFECTEXTENT($l = "19050", $t = "0", $r = "4307", $b = "0") {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':effectExtent l="' . $l . '" t="' . $t . '" r="' . $r . '" b="' . $b . '"></' . CreateImage::NAMESPACEWORD . ':effectExtent>__GENERATEINLINE__';
		$this->_xml = str_replace ( '__GENERATEINLINE__', $xml, $this->_xml );
	}
	protected function generateEXT($cx = '2997226', $cy = '2247918') {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':ext cx="' . $cx . '" cy="' . $cy . '"></' . CreateImage::NAMESPACEWORD1 . ':ext>__GENERATEXFRM__';
		$this->_xml = str_replace ( '__GENERATEXFRM__', $xml, $this->_xml );
	}
	protected function generateEXTENT($cx = '2986543', $cy = '2239906') {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':extent cx="' . $cx . '" cy="' . $cy . '"></' . CreateImage::NAMESPACEWORD . ':extent>__GENERATEINLINE__';
		$this->_xml = str_replace ( '__GENERATEINLINE__', $xml, $this->_xml );
	}
	protected function generateFILLRECT() {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':fillRect></' . CreateImage::NAMESPACEWORD1 . ':fillRect>';
		$this->_xml = str_replace ( '__GENERATESTRETCH__', $xml, $this->_xml );
	}
	protected function generateGRAPHIC($xmlns = 'http://schemas.openxmlformats.org/drawingml/2006/main') {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':graphic xmlns:a="' . $xmlns . '">__GENERATEGRAPHIC__</' . CreateImage::NAMESPACEWORD1 . ':graphic>';
		$this->_xml = str_replace ( '__GENERATEINLINE__', $xml, $this->_xml );
	}
	protected function generateGRAPHICPRAMELOCKS($noChangeAspect = '') {
		$xmlAux = '<' . CreateImage::NAMESPACEWORD1 . ':graphicFrameLocks xmlns:a="' . 'http://schemas.openxmlformats.org/drawingml/2006/main"';
		if ($noChangeAspect != '')
			$xmlAux .= ' noChangeAspect="' . $noChangeAspect . '"';
		$xmlAux .= '></' . CreateImage::NAMESPACEWORD1 . ':graphicFrameLocks>';
		$this->_xml = str_replace ( '__GENERATECNVGRAPHICFRAMEPR__', $xmlAux, $this->_xml );
	}
	protected function generateGRAPHICDATA($uri = 'http://schemas.openxmlformats.org/drawingml/2006/picture') {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':graphicData uri="' . $uri . '">__GENERATEGRAPHICDATA__</' . CreateImage::NAMESPACEWORD1 . ':graphicData>';
		$this->_xml = str_replace ( '__GENERATEGRAPHIC__', $xml, $this->_xml );
	}
	protected function generateINLINE($distT = '0', $distB = '0', $distL = '0', $distR = '0') {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':inline distT="' . $distT . '" distB="' . $distB . '" distL="' . $distL . '" distR="' . $distR . '">__GENERATEINLINE__</' . CreateImage::NAMESPACEWORD . ':inline>';
		$this->_xml = str_replace ( '__GENERATEDRAWING__', $xml, $this->_xml );
	}
	protected function generateJC($val = '') {
		$xml = '<' . CreateElement::NAMESPACEWORD . ':jc ' . CreateElement::NAMESPACEWORD . ':val="' . $val . '"></' . CreateElement::NAMESPACEWORD . ':jc>';
		$this->_xml = str_replace ( '__GENERATEPPR__', $xml, $this->_xml );
	}
	protected function generateLINETO($x = '-198', $y = '21342') {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':lineTo x="' . $x . '" y="' . $y . '"></' . CreateImage::NAMESPACEWORD . ':lineTo>__GENERATEWRAPPOLYGON__';
		$this->_xml = str_replace ( '__GENERATEWRAPPOLYGON__', $xml, $this->_xml );
	}
	protected function generateLN($w = '12700') {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':ln w="' . $w . '">__GENERATELN__</' . CreateImage::NAMESPACEWORD1 . ':ln>__GENERATESPPR__';
		$this->_xml = str_replace ( '__GENERATESPPR__', $xml, $this->_xml );
	}
	protected function generateNOPROOF() {
		$xml = '<' . CreateElement::NAMESPACEWORD . ':noProof></' . CreateElement::NAMESPACEWORD . ':noProof>__GENERATEPPR__';
		$this->_xml = str_replace ( '__GENERATERPR__', $xml, $this->_xml );
	}
	protected function generateNVPICPR() {
		$xml = '<' . CreateImage::NAMESPACEWORD2 . ':nvPicPr>__GENERATENVPICPR__</' . CreateImage::NAMESPACEWORD2 . ':nvPicPr>__GENERATEPIC__';
		$this->_xml = str_replace ( '__GENERATEPIC__', $xml, $this->_xml );
	}
	protected function generateOFF($x = '0', $y = '0') {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':off x="' . $x . '" y="' . $y . '"></' . CreateImage::NAMESPACEWORD1 . ':off>__GENERATEXFRM__';
		$this->_xml = str_replace ( '__GENERATEXFRM__', $xml, $this->_xml );
	}
	protected function generateP() {
		$this->_xml = '<' . CreateElement::NAMESPACEWORD . ':p>__GENERATEP__</' . CreateElement::NAMESPACEWORD . ':p>';
	}
	protected function generatePIC($pic = 'http://schemas.openxmlformats.org/drawingml/2006/picture') {
		$xml = '<' . CreateImage::NAMESPACEWORD2 . ':pic xmlns:pic="' . $pic . '">__GENERATEPIC__</' . CreateImage::NAMESPACEWORD2 . ':pic>';
		$this->_xml = str_replace ( '__GENERATEGRAPHICDATA__', $xml, $this->_xml );
	}
	protected function generatePICT() {
		$this->_xml = str_replace ( '__GENERATER__', '<' . CreateElement::NAMESPACEWORD . ':pict>__GENERATEPICT__</' . CreateElement::NAMESPACEWORD . ':pict>', $this->_xml );
	}
	protected function generatePOSITIONH($relativeFrom = 'margin') {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':positionH relativeFrom="' . $relativeFrom . '">__GENERATEPOSITION__</' . CreateImage::NAMESPACEWORD . ':positionH>__GENERATEINLINE__';
		$this->_xml = str_replace ( '__GENERATEINLINE__', $xml, $this->_xml );
	}
	protected function generatePOSITIONV($relativeFrom = 'line') {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':positionV relativeFrom="' . $relativeFrom . '">__GENERATEPOSITION__</' . CreateImage::NAMESPACEWORD . ':positionV>__GENERATEINLINE__';
		$this->_xml = str_replace ( '__GENERATEINLINE__', $xml, $this->_xml );
	}
	protected function generatePOSOFFSET($num) {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':posOffset>' . $num . '</' . CreateImage::NAMESPACEWORD . ':posOffset>';
		$this->_xml = str_replace ( '__GENERATEPOSITION__', $xml, $this->_xml );
	}
	protected function generatePPR() {
		$xml = '<' . CreateElement::NAMESPACEWORD . ':pPr>__GENERATEPPR__</' . CreateElement::NAMESPACEWORD . ':pPr>__GENERATER__';
		$this->_xml = str_replace ( '__GENERATEP__', $xml, $this->_xml );
	}
	protected function generatePRSTDASH($val = 'sysDash') {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':prstDash val="' . $val . '"></' . CreateImage::NAMESPACEWORD1 . ':prstDash>__GENERATELN__';
		$this->_xml = str_replace ( '__GENERATELN__', $xml, $this->_xml );
	}
	protected function generatePRSTGEOM($prst = 'rect') {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':prstGeom prst="' . $prst . '">__GENERATEPRSTGEOM__</' . CreateImage::NAMESPACEWORD1 . ':prstGeom>__GENERATESPPR__';
		$this->_xml = str_replace ( '__GENERATESPPR__', $xml, $this->_xml );
	}
	protected function generatePSTYLE($val = 'Textonotaalfinal') {
		$xml = '<' . CreateElement::NAMESPACEWORD . ':pStyle ' . CreateElement::NAMESPACEWORD . ':val="' . $val . '"></' . CreateElement::NAMESPACEWORD . ':pStyle>';
		$this->_xml = str_replace ( '__GENERATEPPR__', $xml, $this->_xml );
	}
	protected function generateQUITAR() {
		$this->_xml = '<' . CreateElement::NAMESPACEWORD . ':r>__GENERATER__</' . CreateElement::NAMESPACEWORD . ':r>';
	}
	protected function generateR() {
		if (! empty ( $this->_xml )) {
			if (preg_match ( "/__GENERATEP__/", $this->_xml )) {
				$xml = '<' . CreateElement::NAMESPACEWORD . ':r>__GENERATER__</' . CreateElement::NAMESPACEWORD . ':r>__GENERATESUBR__';
				$this->_xml = str_replace ( '__GENERATEP__', $xml, $this->_xml );
			} elseif (preg_match ( "/__GENERATER__/", $this->_xml )) {
				$xml = '<' . CreateElement::NAMESPACEWORD . ':r>__GENERATER__</' . CreateElement::NAMESPACEWORD . ':r>__GENERATESUBR__';
				$this->_xml = str_replace ( '__GENERATER__', $xml, $this->_xml );
			} elseif (preg_match ( "/__GENERATESUBR__/", $this->_xml )) {
				$xml = '<' . CreateElement::NAMESPACEWORD . ':r>__GENERATER__</' . CreateElement::NAMESPACEWORD . ':r>__GENERATESUBR__';
				$this->_xml = str_replace ( '__GENERATESUBR__', $xml, $this->_xml );
			}
		} else {
			$this->_xml = '<' . CreateElement::NAMESPACEWORD . ':r>__GENERATER__</' . CreateElement::NAMESPACEWORD . ':r>__GENERATESUBR__';
		}
	}
	protected function generateRFONTS($font) {
		$xml = '<' . CreateElement::NAMESPACEWORD . ':rFonts ' . CreateElement::NAMESPACEWORD . ':ascii="' . $font . '" ' . CreateElement::NAMESPACEWORD . ':hAnsi="' . $font . '" ' . CreateElement::NAMESPACEWORD . ':cs="' . $font . '"></' . CreateElement::NAMESPACEWORD . ':rFonts>__GENERATERPR__';
		$this->_xml = str_replace ( '__GENERATERPR__', $xml, $this->_xml );
	}
	protected function generateRPR() {
		$xml = '<' . CreateElement::NAMESPACEWORD . ':rPr>__GENERATERPR__</' . CreateElement::NAMESPACEWORD . ':rPr>__GENERATER__';
		$this->_xml = str_replace ( '__GENERATER__', $xml, $this->_xml );
	}
	protected function generateRSTYLE($val = 'PHPDOCXFootnoteReference') {
		$xml = '<' . CreateElement::NAMESPACEWORD . ':rStyle ' . CreateElement::NAMESPACEWORD . ':val="' . $val . '"></' . CreateElement::NAMESPACEWORD . ':rStyle>';
		$this->_xml = str_replace ( '__GENERATERPR__', $xml, $this->_xml );
	}
	protected function generateSCHEMECLR($val = 'tx1') {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':schemeClr val="' . $val . '"></' . CreateImage::NAMESPACEWORD1 . ':schemeClr>';
		$this->_xml = str_replace ( '__GENERATESOLIDFILL__', $xml, $this->_xml );
	}
	protected function generateSIMPLEPOS($x = '0', $y = '0') {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':simplePos x="' . $x . '" y="' . $y . '"></' . CreateImage::NAMESPACEWORD . ':simplePos>__GENERATEINLINE__';
		$this->_xml = str_replace ( '__GENERATEINLINE__', $xml, $this->_xml );
	}
	protected function generateSOLIDFILL() {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':solidFill>__GENERATESOLIDFILL__</' . CreateImage::NAMESPACEWORD1 . ':solidFill>__GENERATELN__';
		$this->_xml = str_replace ( '__GENERATELN__', $xml, $this->_xml );
	}
	protected function generateSPPR() {
		$xml = '<' . CreateImage::NAMESPACEWORD2 . ':spPr>__GENERATESPPR__</' . CreateImage::NAMESPACEWORD2 . ':spPr>';
		$this->_xml = str_replace ( '__GENERATEPIC__', $xml, $this->_xml );
	}
	protected function generateSTART($x = '-198', $y = '0') {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':start x="' . $x . '" y="' . $y . '"></' . CreateImage::NAMESPACEWORD . ':start>__GENERATEWRAPPOLYGON__';
		$this->_xml = str_replace ( '__GENERATEWRAPPOLYGON__', $xml, $this->_xml );
	}
	protected function generateSTRETCH() {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':stretch>__GENERATESTRETCH__</' . CreateImage::NAMESPACEWORD1 . ':stretch>__GENERATEBLIPFILL__';
		$this->_xml = str_replace ( '__GENERATEBLIPFILL__', $xml, $this->_xml );
	}
	protected function generateT($dat) {
		$xml = '<' . CreateElement::NAMESPACEWORD . ':t xml:space="preserve">' . htmlspecialchars ( $dat ) . '</' . CreateElement::NAMESPACEWORD . ':t>';
		$this->_xml = str_replace ( '__GENERATER__', $xml, $this->_xml );
	}
	protected function generateWRAPNONE() {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':wrapNone></' . CreateImage::NAMESPACEWORD . ':wrapNone>__GENERATEINLINE__';
		$this->_xml = str_replace ( '__GENERATEINLINE__', $xml, $this->_xml );
	}
	protected function generateWRAPPOLYGON($edited = '0') {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':wrapPolygon edited="' . $edited . '">__GENERATEWRAPPOLYGON__</' . CreateImage::NAMESPACEWORD . ':wrapPolygon>';
		$this->_xml = str_replace ( '__GENERATEWRAPTHROUGH__', $xml, $this->_xml );
	}
	protected function generateWRAPSQUARE($wrapText = "bothSides") {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':wrapSquare wrapText="' . $wrapText . '"></' . CreateImage::NAMESPACEWORD . ':wrapSquare>__GENERATEINLINE__';
		$this->_xml = str_replace ( '__GENERATEINLINE__', $xml, $this->_xml );
	}
	protected function generateWRAPTHROUGH($wrapText = 'bothSides') {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':wrapThrough wrapText="' . $wrapText . '">__GENERATEWRAPTHROUGH__</' . CreateImage::NAMESPACEWORD . ':wrapThrough>__GENERATEINLINE__';
		$this->_xml = str_replace ( '__GENERATEINLINE__', $xml, $this->_xml );
	}
	protected function generateWRAPTOPANDBOTTOM() {
		$xml = '<' . CreateImage::NAMESPACEWORD . ':wrapTopAndBottom></' . CreateImage::NAMESPACEWORD . ':wrapTopAndBottom>__GENERATEINLINE__';
		$this->_xml = str_replace ( '__GENERATEINLINE__', $xml, $this->_xml );
	}
	protected function generateXFRM() {
		$xml = '<' . CreateImage::NAMESPACEWORD1 . ':xfrm>__GENERATEXFRM__</' . CreateImage::NAMESPACEWORD1 . ':xfrm>__GENERATESPPR__';
		$this->_xml = str_replace ( '__GENERATESPPR__', $xml, $this->_xml );
	}
} 