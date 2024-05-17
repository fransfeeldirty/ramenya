<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \DB;

// Models
use App\Models\User;
use App\Models\Visitor;

class AdminController extends Controller
{
    public function index() {
        $userByMonth          = User::select(DB::raw('count(*) as `count`'), DB::raw("DATE_FORMAT(created_at, '%M') new_date"),  DB::raw('MONTH(created_at) month'))->groupby('month')->get();
        $visitorByMonth          = Visitor::select(DB::raw('count(*) as `count`'), DB::raw("DATE_FORMAT(date, '%M') new_date"),  DB::raw('MONTH(date) month'))->groupby('month')->get();

        $userCategoriesByMonth = [];
        $visitorCategoriesByMonth = [];
        $userDataByMonth = [];
        $visitorDataByMonth = [];

        foreach ($userByMonth as $user) {
            $userCategoriesByMonth[]   = $user->new_date;
            $userDataByMonth[]         = $user->count;
        }

        foreach ($visitorByMonth as $visitor) {
            $visitorCategoriesByMonth[]   = $visitor->new_date;
            $visitorDataByMonth[]         = $visitor->count;
        }

        return view('admin.dashboard.dashboard', ['userDataByMonth' => $userDataByMonth, 'userCategoriesByMonth' => $userCategoriesByMonth, 'visitorDataByMonth' => $visitorDataByMonth, 'visitorCategoriesByMonth' => $visitorCategoriesByMonth]);
    }
}
