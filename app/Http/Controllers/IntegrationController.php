<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\DB;

class IntegrationController extends Controller
{
    public function getDataPositif(){
        $today = date("j F Y");
        $client = new Client();
        $request = $client->request('GET', 'https://services9.arcgis.com/LhpByrI4ziv5pBfe/arcgis/rest/services/aggregat_b_view_layer/FeatureServer/0/query?f=json&where=Status%3D%27Positif%27&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&outStatistics=%5B%7B%22statisticType%22%3A%22sum%22%2C%22onStatisticField%22%3A%22Jumlah%22%2C%22outStatisticFieldName%22%3A%22value%22%7D%5D&resultType=standard&cacheHint=true');

        $response = $request->getBody()->getContents();
        $result = json_decode($response);
        //dd($result->features[0]);
        $positif = $result->features[0]->{'attributes'}->value;
        //echo $positif;

        DB::table('data_covid')->where('id',1)->update([
            'total_jumlah' => $positif,
            'tanggal_update' => $today
            ]);

        return response()->json([
            'Status'    => TRUE,
            'Message' => 'Data has been updated.'
        ], 200);
    }

    public function getDataNegatif(){
        $today = date("j F Y");
        $client = new Client();
        $request = $client->request('GET', 'https://services9.arcgis.com/LhpByrI4ziv5pBfe/arcgis/rest/services/aggregat_b_view_layer/FeatureServer/0/query?f=json&where=Status%3D%27Negatif%27&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&outStatistics=%5B%7B%22statisticType%22%3A%22sum%22%2C%22onStatisticField%22%3A%22Jumlah%22%2C%22outStatisticFieldName%22%3A%22value%22%7D%5D&resultType=standard&cacheHint=true');

        $response = $request->getBody()->getContents();
        $result = json_decode($response);
        //dd($result->features[0]);
        $negatif = $result->features[0]->{'attributes'}->value;
        //echo $positif;

        DB::table('data_covid')->where('id',2)->update([
            'total_jumlah' => $negatif,
            'tanggal_update' => $today
            ]);

        return response()->json([
            'Status'    => TRUE,
            'Message' => 'Data has been updated.'
        ], 200);
    }

    public function getDataSembuh(){
        $today = date("j F Y");
        $client = new Client();
        $request = $client->request('GET', 'https://services9.arcgis.com/LhpByrI4ziv5pBfe/arcgis/rest/services/aggregat_b_view_layer/FeatureServer/0/query?f=json&where=Status%3D%27Sembuh%27&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&outStatistics=%5B%7B%22statisticType%22%3A%22sum%22%2C%22onStatisticField%22%3A%22Jumlah%22%2C%22outStatisticFieldName%22%3A%22value%22%7D%5D&resultType=standard&cacheHint=true');

        $response = $request->getBody()->getContents();
        $result = json_decode($response);
        $sembuh = $result->features[0]->{'attributes'}->value;

        DB::table('data_covid')->where('id',3)->update([
            'total_jumlah' => $sembuh,
            'tanggal_update' => $today
            ]);

        return response()->json([
            'Status'    => TRUE,
            'Message' => 'Data has been updated.'
        ], 200);
    }

    public function getDataMeninggal(){
        $today = date("j F Y");
        $client = new Client();
        $request = $client->request('GET', 'https://services9.arcgis.com/LhpByrI4ziv5pBfe/arcgis/rest/services/aggregat_b_view_layer/FeatureServer/0/query?f=json&where=(Sub_Status%3D%27PDP%27%20OR%20Sub_Status%3D%27ODP%27%20OR%20Sub_Status%3D%27OTG%27)&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&outStatistics=%5B%7B%22statisticType%22%3A%22sum%22%2C%22onStatisticField%22%3A%22Jumlah%22%2C%22outStatisticFieldName%22%3A%22value%22%7D%5D&resultType=standard&cacheHint=true');

        $response = $request->getBody()->getContents();
        $result = json_decode($response);
        $meninggal = $result->features[0]->{'attributes'}->value;

        DB::table('data_covid')->where('id',4)->update([
            'total_jumlah' => $meninggal,
            'tanggal_update' => $today
            ]);

        return response()->json([
            'Status'    => TRUE,
            'Message' => 'Data has been updated.'
        ], 200);
    }

    public function getDataPDP(){
        $today = date("j F Y");
        $client = new Client();
        $request = $client->request('GET', 'https://services9.arcgis.com/LhpByrI4ziv5pBfe/arcgis/rest/services/aggregat_b_view_layer/FeatureServer/0/query?f=json&where=Status%3D%27PDP%27&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&outStatistics=%5B%7B%22statisticType%22%3A%22sum%22%2C%22onStatisticField%22%3A%22Jumlah%22%2C%22outStatisticFieldName%22%3A%22value%22%7D%5D&resultType=standard&cacheHint=true');

        $response = $request->getBody()->getContents();
        $result = json_decode($response);
        $pdp = $result->features[0]->{'attributes'}->value;

        DB::table('data_covid')->where('id',5)->update([
            'total_jumlah' => $pdp,
            'tanggal_update' => $today
            ]);

        return response()->json([
            'Status'    => TRUE,
            'Message' => 'Data has been updated.'
        ], 200);
    }

    public function getDataODP(){
        $today = date("j F Y");
        $client = new Client();
        $request = $client->request('GET', 'https://services9.arcgis.com/LhpByrI4ziv5pBfe/arcgis/rest/services/aggregat_b_view_layer/FeatureServer/0/query?f=json&where=Status%3D%27ODP%27&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&outStatistics=%5B%7B%22statisticType%22%3A%22sum%22%2C%22onStatisticField%22%3A%22Jumlah%22%2C%22outStatisticFieldName%22%3A%22value%22%7D%5D&resultType=standard&cacheHint=true');

        $response = $request->getBody()->getContents();
        $result = json_decode($response);
        $odp = $result->features[0]->{'attributes'}->value;

        DB::table('data_covid')->where('id',6)->update([
            'total_jumlah' => $odp,
            'tanggal_update' => $today
            ]);

        return response()->json([
            'Status'    => TRUE,
            'Message' => 'Data has been updated.'
        ], 200);
    }

    public function getDataOTG(){
        $today = date("j F Y");
        $client = new Client();
        $request = $client->request('GET', 'https://services9.arcgis.com/LhpByrI4ziv5pBfe/arcgis/rest/services/aggregat_b_view_layer/FeatureServer/0/query?f=json&where=Status%3D%27OTG%27&returnGeometry=false&spatialRel=esriSpatialRelIntersects&outFields=*&outStatistics=%5B%7B%22statisticType%22%3A%22sum%22%2C%22onStatisticField%22%3A%22Jumlah%22%2C%22outStatisticFieldName%22%3A%22value%22%7D%5D&resultType=standard&cacheHint=true');

        $response = $request->getBody()->getContents();
        $result = json_decode($response);
        $otg = $result->features[0]->{'attributes'}->value;

        DB::table('data_covid')->where('id',7)->update([
            'total_jumlah' => $otg,
            'tanggal_update' => $today
            ]);

        return response()->json([
            'Status'    => TRUE,
            'Message' => 'Data has been updated.'
        ], 200);
    }

    public function synchronize(){
        $this->getDataPositif();
        $this->getDataNegatif();
        $this->getDataSembuh();
        $this->getDataMeninggal();
        $this->getDataPDP();
        $this->getDataODP();
        $this->getDataOTG();

        return response()->json([
            'Status'    => TRUE,
            'Message' => 'Data has been updated.'
        ], 200);
    }
}
