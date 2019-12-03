<?php

/* @var $this yii\web\View */

$this->title = 'Grafik';
$this->params['breadcrumbs'][] = $this->title;
?>

<!-- <pre><?php var_dump($data)?></pre> -->
<div id="chartContainer" style="height: 350px; width: 100%; margin-top:3%"></div>

<button class="btn invisible pt-lg-5" id="backButton">
	Back </button> 
	<!-- <script src="https://canvasjs.com/assets/script/canvasjs.min.js"> -->
	<script src="../web/js/canvas.min.js">
		</script>
		<script>
			window.onload = function() {

				var visitorsData = {
					"Grafik Tahun Wisuda": [{
						click: visitorsChartDrilldownHandler,
						cursor: "pointer",
						explodeOnClick: false,
						innerRadius: "75%",
						legendMarkerType: "square",
						name: "Grafik Tahun Wisuda",
						radius: "100%",
						showInLegend: true,
						startAngle: 90,
						type: "doughnut",
						dataPoints: [

							<?php

							$jumlah = 0;
							foreach ($data as $key => $val) {
								$jumlah += count($val);
								$color = substr(md5(rand()), 0, 6);
								echo '{ 
									y: ' . count($val) . ', 
									name: "' . $key . '", 
									color: "#' . $color . '" },';
							}
							?>

							// { y: 23, name: "Returning Visitors", color: "#546BC1" }
						]
					}],
					<?php
					foreach ($data as $key => $val) {
						$lk = 0;
						$pr = 0;

						$tif = 0; $sif = 0; $tin = 0; $hs = 0;
						$pai = 0; $pba = 0; $ki = 0; $pbi = 0;
						$pmt = 0; $pgmi = 0; $pk = 0; $pbind = 0;
						$tipa = 0; $pg = 0; $pie = 0;

						$mt = 0;
						foreach ($val as $jk) {
							if ($jk == 'Teknik Informatika') {
							 	$tif += 1;
							} else if ($jk == 'Sistem Informasi') {
							 	$sif += 1;
							} else if ($jk == 'Teknik Industri') {
								$tin += 1;
							} else if ($jk == 'Hukum Syariah') {
								$hs += 1;
							} else if ($jk == 'Pendidikan Agama Islam') {
								$pai += 1;
							} else if ($jk == 'Pendidikan Bahasa Arab') {
								$pba += 1;
							} else if ($jk == 'Kependidikan Islam') {
								$ki += 1;
							} else if ($jk == 'Pendidikan Bahasa Inggris') {
								$pbi += 1;
							} else if ($jk == 'Pendidikan Matematika') {
								$pmt += 1;
							} else if ($jk == 'Pendidikan Guru Madrasah Ibtidaiyah') {
								$pgmi += 1;
							} else if ($jk == 'Pendidikan Kimia') {
								$pk += 1;
							} else if ($jk == 'Pendidikan Bahasa Indonesia') {
								$pbind += 1;
							} else if ($jk == 'Tadris IPA') {
								$tipa += 1;
							} else if ($jk == 'Pendidikan Geografi') {
								$pg += 1;
							} else if ($jk == 'Pendidikan IPS Ekonomi') {
								$pie += 1;
							} 
							
							
							else if ($jk == 'Matematika') {
								$mt += 1;
							}
						}
						$datajk=[];
						$jj = '';
						$t = false;
						foreach ($val as $jk) {
							if($jk != $jj){
								foreach ($datajk as $dataku) { 
									if($jk == $dataku){
										$t = true;
										break;
									}
								}
								if($t == false){
									array_push($datajk, $jk);
								}
							}
							$jj = $jk;
						}
						?> "<?= $key ?>": [{
							// color: "#E7823A",
							name: "New Visitors",
							type: "column",
							dataPoints: 
							<?php
								echo "[";								
								foreach ($datajk as $dataa) {
										echo "
										{
											label: '$dataa',
											y: ";
											if($dataa == "Teknik Informatika"){
												echo $tif;
											}else if($dataa == "Sistem Informasi"){
												echo $sif;
											} else if ($dataa == "Teknik Industri") {
												echo $tin;
											} else if ($dataa == "Hukum Syariah") {
												echo $hs;
											} else if ($dataa == 'Pendidikan Agama Islam') {
												echo $pai;
											} else if ($dataa == 'Pendidikan Bahasa Arab') {
												echo $pba;
											} else if ($dataa == 'Kependidikan Islam') {
												echo $ki;
											} else if ($dataa == 'Pendidikan Bahasa Inggris') {
												echo $pbi;
											} else if ($dataa == 'Pendidikan Matematika') {
												echo $pmt;
											} else if ($dataa == 'Pendidikan Guru Madrasah Ibtidaiyah') {
												echo $pgmi;
											} else if ($dataa == 'Pendidikan Kimia') {
												echo $pk;
											} else if ($dataa == 'Pendidikan Bahasa Indonesia') {
												echo $pbind;
											} else if ($dataa == 'Tadris IPA') {
												echo $tipa;
											} else if ($dataa == 'Pendidikan Geografi') {
												echo $pg;
											} else if ($dataa == 'Pendidikan IPS Ekonomi') {
												echo $pie;
											} else if ($dataa == 'Matematika') {
												echo $mt;
											}else{
												echo 0;
											}
										echo "},
										";
								}
								echo "]";
							?>
							// [{
							// 		label: "Laki-Laki",
							// 		y: <?= $lk ?>
							// 	},
							// 	{
							// 		label: "Perempuan",
							// 		y: <?= $pr ?>
							// 	},
							// ]
						}],
					<?php
					}

					?>

					// "Returning Visitors": [{
					// color: "#546BC1",
					// name: "Returning Visitors",
					// type: "column",
					// dataPoints: [
					// { label: "2015", y: 4 },
					// { label: "2016", y: 6 },
					// { label: "2017", y: 10 },
					// { label: "2018", y: 6 },
					// ]
					// },
					// ]
				};

				var newVSReturningVisitorsOptions = {
					animationEnabled: true,
					theme: "light2",
					title: {
						text: "Grafik Tahun Wisuda Berdasarkan Jurusan"
					},
					subtitles: [{
						// text: "Click on Any Segment to Drilldown",
						text: "I Love U Pak, Diklik yang mana aja ya",
						backgroundColor: "#2eacd1",
						fontSize: 16,
						fontColor: "white",
						padding: 5
					}],
					legend: {
						fontFamily: "calibri",
						fontSize: 14,
						itemTextFormatter: function(e) {
							return e.dataPoint.name + ": " + Math.round(e.dataPoint.y / <?= $jumlah ?> * 100) + "%";
						}
					},
					data: []
				};

				var visitorsDrilldownedChartOptions = {
					animationEnabled: true,
					theme: "light2",
					axisX: {
						labelFontColor: "#717171",
						lineColor: "#a2a2a2",
						tickColor: "#a2a2a2"
					},
					axisY: {
						gridThickness: 0,
						includeZero: false,
						labelFontColor: "#717171",
						lineColor: "#a2a2a2",
						tickColor: "#a2a2a2",
						lineThickness: 1
					},
					axisY2: {
						gridThickness: 0,
						includeZero: false,
						labelFontColor: "#717171",
						lineColor: "#53aag5",
						tickColor: "#53aag5",
						lineThickness: 1
					},
					data: []
				};

				var chart = new CanvasJS.Chart("chartContainer", newVSReturningVisitorsOptions);
				chart.options.data = visitorsData["Grafik Tahun Wisuda"];
				chart.render();

				function visitorsChartDrilldownHandler(e) {
					chart = new CanvasJS.Chart("chartContainer", visitorsDrilldownedChartOptions);
					chart.options.data = visitorsData[e.dataPoint.name];
					chart.options.title = {
						text: e.dataPoint.name
					}
					chart.render();
					$("#backButton").toggleClass("invisible");
				}

				$("#backButton").click(function() {
					$(this).toggleClass("invisible");
					chart = new CanvasJS.Chart("chartContainer", newVSReturningVisitorsOptions);
					chart.options.data = visitorsData["Grafik Tahun Wisuda"];
					chart.render();
				});

			}
		</script>
		<style>
			#backButton {
				border-radius: 4px;
				padding: 8px;
				border: none;
				font-size: 16px;
				background-color: #2eacd1;
				color: white;
				position: absolute;
				top: 10px;
				right: 10px;
				cursor: pointer;
				z-index:10px;
				margin-top: 10%;
			}

			.invisible {
				display: none;
			}
		</style>