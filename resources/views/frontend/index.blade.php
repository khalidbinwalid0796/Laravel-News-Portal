@extends('layouts.front')
@section('content')

@php
	 $firstsectionbig=DB::table('posts')->where('first_section_thumbnail',1)->orderBy('id','DESC')->first();
	 $firstsectionsmall=DB::table('posts')->where('first_section',1)->orderBy('id','DESC')->limit(8)->get();
@endphp

	<!-- 1st-news-section-start -->	
	<section class="news-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-9 col-sm-8">
					<div class="row">
						<div class="col-md-1 col-sm-1 col-lg-1"></div>
							@php
								$slug=preg_replace('/\s+/u', '-', trim($firstsectionbig->title_bn));
							@endphp
						<div class="col-md-10 col-sm-10">
							<div class="lead-news">
								<div class="service-img"><a href="{{ URL::to('view-post/'.$firstsectionbig->id.'/'.$slug) }}"><img src="{{asset($firstsectionbig->image)}}" alt="Notebook"></a></div>
								<div class="content">
								<h4 class="lead-heading-01"><a href="{{ URL::to('view-post/'.$firstsectionbig->id.'/'.$slug) }}">								
									@if(session()->get('lang') == 'english')
								   {{ $firstsectionbig->title_en }} 
								@else
								  {{ $firstsectionbig->title_bn }} 
								 @endif</a> </h4>
								</div>
							</div>
						</div>
						
					</div>
						<div class="row">
							@foreach($firstsectionsmall as $row)
							@php
								$slug=preg_replace('/\s+/u', '-', trim($row->title_bn));
							@endphp
								<div class="col-md-3 col-sm-3">
									<div class="top-news">
										<a href="{{ URL::to('view-post/'.$row->id.'/'.$slug) }}"><img src="{{asset($row->image)}}" alt="Notebook"></a>
										<h4 class="heading-02"><a href="{{ URL::to('view-post/'.$row->id.'/'.$slug) }}">									
											@if(session()->get('lang') == 'english')
								   {{ $row->title_en }} 
								@else
								  {{ $row->title_bn }}
								@endif</a> </h4>
									</div>
								</div>
							@endforeach	
						</div>
					
					<!-- add-start -->	
					<div class="row">
						@php
						  $horizontal2=DB::table('ads')->where('type',2)->skip(1)->first();
						@endphp
						<div class="col-md-12 col-sm-12">
							<div class="add">
								@if($horizontal2==NULL)
								@else
									 <a href="{{ $horizontal2->link }}" target="_blank">	
									 	<img src="{{ asset($horizontal2->ads) }}" alt="" />
									 </a>
								@endif
							</div>
						</div>
					</div><!-- /.add-close -->	
					
					<!-- news-start -->
					<div class="row">
				@php
					$firstcat=DB::table('categories')->first();
					$firstcatpostbig=DB::table('posts')->where('cat_id',$firstcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
					$firstcatpostsmall=DB::table('posts')->where('cat_id',$firstcat->id)->where('bigthumbnail',NULL)->orderBy('id','DESC')->limit(3)->get();
				@endphp
						<div class="col-md-6 col-sm-6">
							<div class="bg-one">
								<div class="cetagory-title">
								@if(session()->get('lang') == 'english')
								   {{ $firstcat->category_en }} 
								@else
								  {{ $firstcat->category_bn }} 
								 @endif
								 <a href="{{ URL::to('post/'.$firstcat->id.'/'.$firstcat->category_bn)}}">
								  <span>
								 @if(session()->get('lang') == 'english')
								   More
								@else
								  আরও
								 @endif<i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
								<div class="row">
							@php
								$slug=preg_replace('/\s+/u', '-', trim($firstcatpostbig->title_bn));
							@endphp
									<div class="col-md-6 col-sm-6">
										<div class="top-news">
											<a href="{{ URL::to('view-post/'.$firstcatpostbig->id.'/'.$slug) }}"><img src="{{ asset($firstcatpostbig->image)}}" alt="Notebook"></a>
											<h4 class="heading-02"><a href="{{ URL::to('view-post/'.$firstcatpostbig->id.'/'.$slug) }}">
												@if(session()->get('lang') == 'english')
												   {{ $firstcatpostbig->title_en }} 
												@else
												  {{ $firstcatpostbig->title_bn }} 
												 @endif
											</a> </h4>
										</div>
									</div>

									<div class="col-md-6 col-sm-6">
									@foreach($firstcatpostsmall as $row)
									@php
										$slug=preg_replace('/\s+/u', '-', trim($row->title_bn));
									@endphp										
										<div class="image-title">
											<a href="{{ URL::to('view-post/'.$row->id.'/'.$slug) }}"><img src="{{ asset($row->image)}}" alt="Notebook"></a>
											<h4 class="heading-03"><a href="{{ URL::to('view-post/'.$row->id.'/'.$slug) }}">
												@if(session()->get('lang') == 'english')
												   {{ $row->title_en }} 
												@else
												  {{ $row->title_bn }} 
												 @endif
											</a> </h4>
										</div>
									@endforeach	
								

									</div>
								</div>
							</div>
						</div>
			@php
			$secondcat=DB::table('categories')->skip(1)->first();
			$secondcatpostbig=DB::table('posts')->where('cat_id',$secondcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
			$secondcatpostsmall=DB::table('posts')->where('cat_id',$secondcat->id)->where('bigthumbnail',NULL)->orderBy('id','DESC')->limit(3)->get();
			@endphp
						<div class="col-md-6 col-sm-6">
							<div class="bg-one">
								<div class="cetagory-title">
								@if(session()->get('lang') == 'english')
								   {{ $secondcat->category_en }} 
								@else
								  {{ $secondcat->category_bn }} 
								 @endif
								 <a href="{{ URL::to('post/'.$secondcat->id.'/'.$secondcat->category_bn)}}">
								  <span>
								 @if(session()->get('lang') == 'english')
								   More
								@else
								  আরও
								 @endif<i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
								<div class="row">
										<div class="col-md-6 col-sm-6">
										<div class="top-news">
											<a href="#"><img src="
												{{ asset($secondcatpostbig->image)}}" alt="Notebook"></a>
											<h4 class="heading-02"><a href="#">
												@if(session()->get('lang') == 'english')
												   {{ $secondcatpostbig->title_en }} 
												@else
												  {{ $secondcatpostbig->title_bn }} 
												 @endif
											</a> </h4>
										</div>
									</div>
									<div class="col-md-6 col-sm-6">
							          @foreach($secondcatpostsmall as $row)	
							          	<div class="image-title">
							          		<a href="#"><img src="{{ asset($row->image)}}" alt="Notebook"></a>
							          		<h4 class="heading-03"><a href="#">
							          			@if(session()->get('lang') == 'english')
							          			   {{ $row->title_en }} 
							          			@else
							          			  {{ $row->title_bn }} 
							          			 @endif
							          		</a> </h4>
							          	</div>
							          @endforeach	
									</div>
								</div>
							</div>
						</div>

					</div>					
				</div>
				<div class="col-md-3 col-sm-3">
					<!-- add-start -->	
					<div class="row">
						<div class="col-md-12 col-sm-12">
						@php
						  $vertical1=DB::table('ads')->where('type',1)->first();
						@endphp
							<div class="sidebar-add">
								<a href="{{ $vertical1->link }}" target="_blank"><img src="{{ asset($vertical1->ads) }}" alt="" /></a>
							</div>
						</div>
					</div><!-- /.add-close -->	
					@php
						$live_tv =  DB::table('livetv')->first(); 
					@endphp	    
					<!-- youtube-live-start -->	
					@if($live_tv->status==1)
					<div class="cetagory-title-03">
						@if(session()->get('lang')== 'english')
							  Live TV
							@else
							  লাইভ টিভি 
							  @endif
					</div>
					<div class="photo">
						<div class="embed-responsive embed-responsive-16by9 embed-responsive-item" style="margin-bottom:5px;">
							<!-- {{ $live_tv->embed_code }} -->
							{!! $live_tv->embed_code !!}
						</div>
					</div><!-- /.youtube-live-close -->	
					@endif
					<!-- facebook-page-start -->
					<!-- facebook-page-start -->
					<div class="cetagory-title-03">
						  @if(session()->get('lang') == 'english')
				             Our Facebook
				          @else
				            ফেসবুকে আমরা
				          @endif
					  
				   </div>
					  <div class="fb-root">
                            <div class="fb-page" data-href="https://www.facebook.com/ehtirambd" data-tabs="" data-width="" data-height="" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="" class="fb-xfbml-parse-ignore"><a href="">Ehtirambd</a></blockquote></div>
                              <div id="fb-root"></div>
                               <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v7.0&appId=251302696084561&autoLogAppEvents=1"></script>
                        </div>
					
					<!-- add-start -->	
						<div class="row">
						<div class="col-md-12 col-sm-12">
						@php
						  $vertical2=DB::table('ads')->where('type',1)->skip(1)->first();
						@endphp
							<div class="sidebar-add">
								<a href="{{ $vertical2->link }}" target="_blank"><img src="{{ asset($vertical2->ads) }}" alt="" /></a>
							</div>
						</div>
					</div><!-- /.add-close -->	
				</div>
			</div>
		</div>
	</section><!-- /.1st-news-section-close -->

	<!-- 2nd-news-section-start -->	
	<section class="news-section">
		<div class="container-fluid">
					<div class="row">
				@php
					$thirdcat=DB::table('categories')->skip(2)->first();
					$thirdcatpostbig=DB::table('posts')->where('cat_id',$thirdcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
					$thirdcatpostsmall=DB::table('posts')->where('cat_id',$thirdcat->id)->where('bigthumbnail',NULL)->orderBy('id','DESC')->limit(3)->get();
				@endphp
						<div class="col-md-6 col-sm-6">
							<div class="bg-one">
								<div class="cetagory-title">
								@if(session()->get('lang') == 'english')
								   {{ $thirdcat->category_en }} 
								@else
								  {{ $thirdcat->category_bn }} 
								 @endif
								 <a href="{{ URL::to('post/'.$thirdcat->id.'/'.$thirdcat->category_bn)}}">
								  <span>
								 @if(session()->get('lang') == 'english')
								   More
								@else
								  আরও
								 @endif<i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
								<div class="row">
									<div class="col-md-6 col-sm-6">
										<div class="top-news">
											<a href="#"><img src="{{ asset($firstcatpostbig->image)}}" alt="Notebook"></a>
											<h4 class="heading-02"><a href="#">
												@if(session()->get('lang') == 'english')
												   {{ $thirdcatpostbig->title_en }} 
												@else
												  {{ $thirdcatpostbig->title_bn }} 
												 @endif
											</a> </h4>
										</div>
									</div>

									<div class="col-md-6 col-sm-6">
									@foreach($thirdcatpostsmall as $row)	
										<div class="image-title">
											<a href="#"><img src="{{ asset($row->image)}}" alt="Notebook"></a>
											<h4 class="heading-03"><a href="#">
												@if(session()->get('lang') == 'english')
												   {{ $row->title_en }} 
												@else
												  {{ $row->title_bn }} 
												 @endif
											</a> </h4>
										</div>
									@endforeach	
								

									</div>
								</div>
							</div>
						</div>
			@php
			$fourthcat=DB::table('categories')->skip(3)->first();
			$fourthcatpostbig=DB::table('posts')->where('cat_id',$fourthcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
			$fourthcatpostsmall=DB::table('posts')->where('cat_id',$fourthcat->id)->where('bigthumbnail',NULL)->orderBy('id','DESC')->limit(3)->get();
			@endphp
						<div class="col-md-6 col-sm-6">
							<div class="bg-one">
								<div class="cetagory-title">
								@if(session()->get('lang') == 'english')
								   {{ $fourthcat->category_en }} 
								@else
								  {{ $fourthcat->category_bn }} 
								 @endif
								 <a href="{{ URL::to('post/'.$fourthcat->id.'/'.$fourthcat->category_bn)}}">
								  <span>
								 @if(session()->get('lang') == 'english')
								   More
								@else
								  আরও
								 @endif<i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
								<div class="row">
										<div class="col-md-6 col-sm-6">
										<div class="top-news">
											<a href="#"><img src="{{ asset($fourthcatpostbig->image)}}" alt="Notebook"></a>
											<h4 class="heading-02"><a href="#">
												@if(session()->get('lang') == 'english')
												   {{ $fourthcatpostbig->title_en }} 
												@else
												  {{ $fourthcatpostbig->title_bn }} 
												 @endif
											</a> </h4>
										</div>
									</div>
									<div class="col-md-6 col-sm-6">
							          @foreach($fourthcatpostsmall as $row)	
							          	<div class="image-title">
							          		<a href="#"><img src="{{ asset($row->image)}}" alt="Notebook"></a>
							          		<h4 class="heading-03"><a href="#">
							          			@if(session()->get('lang') == 'english')
							          			   {{ $row->title_en }} 
							          			@else
							          			  {{ $row->title_bn }} 
							          			 @endif
							          		</a> </h4>
							          	</div>
							          @endforeach	
									</div>
								</div>
							</div>
						</div>

					</div>
			<!-- ******* -->
					<div class="row">
				@php
					$fifthcat=DB::table('categories')->skip(4)->first();
					$fifthcatpostbig=DB::table('posts')->where('cat_id',$fifthcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
					$fifthcatpostsmall=DB::table('posts')->where('cat_id',$fifthcat->id)->where('bigthumbnail',NULL)->orderBy('id','DESC')->limit(3)->get();
				@endphp
						<div class="col-md-6 col-sm-6">
							<div class="bg-one">
								<div class="cetagory-title">
								@if(session()->get('lang') == 'english')
								   {{ $fifthcat->category_en }} 
								@else
								  {{ $fifthcat->category_bn }} 
								 @endif
								 <a href="{{ URL::to('post/'.$fifthcat->id.'/'.$fifthcat->category_bn)}}">
								  <span>
								 @if(session()->get('lang') == 'english')
								   More
								@else
								  আরও
								 @endif<i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
								<div class="row">
									<div class="col-md-6 col-sm-6">
										<div class="top-news">
											<a href="#"><img src="{{ asset($fifthcatpostbig->image)}}" alt="Notebook"></a>
											<h4 class="heading-02"><a href="#">
												@if(session()->get('lang') == 'english')
												   {{ $fifthcatpostbig->title_en }} 
												@else
												  {{ $fifthcatpostbig->title_bn }} 
												 @endif
											</a> </h4>
										</div>
									</div>

									<div class="col-md-6 col-sm-6">
									@foreach($fifthcatpostsmall as $row)	
										<div class="image-title">
											<a href="#"><img src="{{ asset($row->image)}}" alt="Notebook"></a>
											<h4 class="heading-03"><a href="#">
												@if(session()->get('lang') == 'english')
												   {{ $row->title_en }} 
												@else
												  {{ $row->title_bn }} 
												 @endif
											</a> </h4>
										</div>
									@endforeach	
								

									</div>
								</div>
							</div>
						</div>
			@php
			$sixcat=DB::table('categories')->skip(5)->first();
			$sixcatpostbig=DB::table('posts')->where('cat_id',$sixcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
			$sixcatpostsmall=DB::table('posts')->where('cat_id',$sixcat->id)->where('bigthumbnail',NULL)->orderBy('id','DESC')->limit(3)->get();
			@endphp
						<div class="col-md-6 col-sm-6">
							<div class="bg-one">
								<div class="cetagory-title">
								@if(session()->get('lang') == 'english')
								   {{ $sixcat->category_en }} 
								@else
								  {{ $sixcat->category_bn }} 
								 @endif
								 <a href="{{ URL::to('post/'.$sixcat->id.'/'.$sixcat->category_bn)}}">
								  <span>
								 @if(session()->get('lang') == 'english')
								   More
								@else
								  আরও
								 @endif<i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
								<div class="row">
										<div class="col-md-6 col-sm-6">
										<div class="top-news">
											<a href="#"><img src="
												{{ asset($sixcatpostbig->image)}}" alt="Notebook"></a>
											<h4 class="heading-02"><a href="#">
												@if(session()->get('lang') == 'english')
												   {{ $sixcatpostbig->title_en }} 
												@else
												  {{ $sixcatpostbig->title_bn }} 
												 @endif
											</a> </h4>
										</div>
									</div>
									<div class="col-md-6 col-sm-6">
							          @foreach($secondcatpostsmall as $row)	
							          	<div class="image-title">
							          		<a href="#"><img src="{{ asset($row->image)}}" alt="Notebook"></a>
							          		<h4 class="heading-03"><a href="#">
							          			@if(session()->get('lang') == 'english')
							          			   {{ $row->title_en }} 
							          			@else
							          			  {{ $row->title_bn }} 
							          			 @endif
							          		</a> </h4>
							          	</div>
							          @endforeach	
									</div>
								</div>
							</div>
						</div>

					</div>
					@php
  $horizontal3=DB::table('ads')->where('type',2)->skip(2)->first();
  $horizontal4=DB::table('ads')->where('type',2)->skip(3)->first();
@endphp
			<!-- add-start -->	
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="add">
						<a href="{{ $horizontal3->link }}" target="_blank"> <img src="{{ asset($horizontal3->ads) }}" alt="" /> </a>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
				<a href="{{ $horizontal4->link }}" target="_blank"> <img src="{{ asset($horizontal4->ads) }}" alt="" /> </a>
				</div>
			</div><!-- /.add-close -->	
			
		</div>
	</section><!-- /.2nd-news-section-close -->

	<!-- 3rd-news-section-start -->	
	<section class="news-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-9 col-sm-9">
					<div class="cetagory-title"><a href="#">								
						@if(session()->get('lang') == 'english')
								  Country 
								@else
								  
								  সারাদেশে
								 @endif
								 <a href="">
								  <span>
								 @if(session()->get('lang') == 'english')
								   More
								@else
								  আরও
								 @endif<i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
@php
	$countrybigpost=DB::table('posts')->whereNotNull('dist_id')->orderBy('id','DESC')->first();
	$countryfirst3=DB::table('posts')->whereNotNull('dist_id')->skip(1)->orderBy('id','DESC')->limit(3)->get();
	$countrysecond3=DB::table('posts')->whereNotNull('dist_id')->skip(4)->orderBy('id','DESC')->limit(3)->get();
@endphp
					<div class="row">
						@php
							$dis=DB::table('districts')->get();
						@endphp
						<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
							<form action="{{ route('saradesh.news') }}" method="get">
								@csrf
								<div class="row">
									<div class="col-lg-4">
										<select class="form-control" name="dist_id" id="dist_id" required>
												<option selected="">==choose one==</option>
												@foreach($dis as $row)
												<option value="{{ $row->id }}">{{ $row->district_bn }}</option>
												@endforeach
										</select>
									</div>
										<div class="col-lg-4">
										<select class="form-control" name="subdist_id" id="subdist_id" required>
												<option selected="">==choose one==</option>
										</select>
									</div>
										<div class="col-lg-4">
										<button class="btn btn-success btn-block" type="submit"> খুজুন</button>
									</div>
								</div>
						   </form>

					<hr>

						<div class="col-md-4 col-sm-4">
							<div class="top-news">
								<a href="#"><img src="{{ asset($countrybigpost->image)}}" alt="Notebook"></a>
								<h4 class="heading-02"><a href="#">	
									@if(session()->get('lang') == 'english')
							{{ $countrybigpost->title_en }}
							@else
							 {{ $countrybigpost->title_bn }}
							 @endif</a> </h4>
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							@foreach($countryfirst3 as $row)
							<div class="image-title">
								<a href="#"><img src="{{ asset($row->image)}}" alt="Notebook"></a>
								<h4 class="heading-03"><a href="#">	
									@if(session()->get('lang') == 'english')
							{{ $row->title_en }}
							@else
							 {{ $row->title_bn }}
							 @endif</a> </h4>
							</div>
							@endforeach
						</div>



						<div class="col-md-4 col-sm-4">
							@foreach($countryfirst3 as $row)
							<div class="image-title">
								<a href="#"><img src="{{ asset($row->image)}}" alt="Notebook"></a>
								<h4 class="heading-03"><a href="#">	
									@if(session()->get('lang') == 'english')
							{{ $row->title_en }}
							@else
							 {{ $row->title_bn }}
							 @endif</a> </h4>
							</div>
							@endforeach
						</div>
					</div>
					<!-- ******* -->
					<br />
					<div class="row">
					@php
					$sevencat=DB::table('categories')->skip(6)->first();
					$sevencatpostbig=DB::table('posts')->where('cat_id',$sevencat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
					$sevencatpostsmall=DB::table('posts')->where('cat_id',$sevencat->id)->where('bigthumbnail',NULL)->orderBy('id','DESC')->limit(3)->get();
						@endphp
						<div class="col-md-6 col-sm-6">
							<div class="bg-one">
								<div class="cetagory-title">
								@if(session()->get('lang') == 'english')
								   {{ $sevencat->category_en }} 
								@else
								  {{ $sevencat->category_bn }} 
								 @endif
								 <a href="{{ URL::to('post/'.$sevencat->id.'/'.$sevencat->category_bn)}}">
								  <span>
								 @if(session()->get('lang') == 'english')
								   More
								@else
								  আরও
								 @endif<i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
								<div class="row">
									<div class="col-md-6 col-sm-6">
										<div class="top-news">
											<a href="#"><img src="{{ asset($sevencatpostbig->image)}}" alt="Notebook"></a>
											<h4 class="heading-02"><a href="#">
												@if(session()->get('lang') == 'english')
												   {{ $sevencatpostbig->title_en }} 
												@else
												  {{ $sevencatpostbig->title_bn }} 
												 @endif
											</a> </h4>
										</div>
									</div>

									<div class="col-md-6 col-sm-6">
									@foreach($sevencatpostsmall as $row)	
										<div class="image-title">
											<a href="#"><img src="{{ asset($row->image)}}" alt="Notebook"></a>
											<h4 class="heading-03"><a href="#">
												@if(session()->get('lang') == 'english')
												   {{ $row->title_en }} 
												@else
												  {{ $row->title_bn }} 
												 @endif
											</a> </h4>
										</div>
									@endforeach	
								

									</div>
								</div>
							</div>
						</div>
			@php
			$eightcat=DB::table('categories')->skip(7)->first();
			$eightcatpostbig=DB::table('posts')->where('cat_id',$eightcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
			$eightcatpostsmall=DB::table('posts')->where('cat_id',$eightcat->id)->where('bigthumbnail',NULL)->orderBy('id','DESC')->limit(3)->get();
			@endphp

						<div class="col-md-6 col-sm-6">
							<div class="bg-one">
								<div class="cetagory-title">
								@if(session()->get('lang') == 'english')
								   {{ $eightcat->category_en }} 
								@else
								  {{ $eightcat->category_bn }} 
								 @endif
								 <a href="{{ URL::to('post/'.$eightcat->id.'/'.$eightcat->category_bn)}}">
								  <span>
								 @if(session()->get('lang') == 'english')
								   More
								@else
								  আরও
								 @endif<i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
								<div class="row">
										<div class="col-md-6 col-sm-6">
										<div class="top-news">
											<a href="#"><img src="{{ asset($eightcatpostbig->image)}}" alt="Notebook"></a>
											<h4 class="heading-02"><a href="#">
												@if(session()->get('lang') == 'english')
												   {{ $eightcatpostbig->title_en }} 
												@else
												  {{ $eightcatpostbig->title_bn }} 
												 @endif
											</a> </h4>
										</div>
									</div>
									<div class="col-md-6 col-sm-6">
							          @foreach($eightcatpostsmall as $row)	
							          	<div class="image-title">
							          		<a href="#"><img src="{{ asset($row->image)}}" alt="Notebook"></a>
							          		<h4 class="heading-03"><a href="#">
							          			@if(session()->get('lang') == 'english')
							          			   {{ $row->title_en }} 
							          			@else
							          			  {{ $row->title_bn }} 
							          			 @endif
							          		</a> </h4>
							          	</div>
							          @endforeach	
									</div>
								</div>
							</div>
						</div>
					</div>
					
@php
  $horizontal5=DB::table('ads')->where('type',2)->skip(4)->first();
@endphp
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="sidebar-add">
							<a href="{{ $horizontal5->link }}"> <img src="{{ asset($horizontal5->ads) }}" alt="" /> </a>	
							</div>
						</div>
					</div><!-- /.add-close -->	


				</div>
				@php
				$latest=DB::table('posts')->orderBy('id','DESC')->limit(8)->get();
				$favourite=DB::table('posts')->inRandomOrder()->orderBy('id','DESC')->limit(8)->get();
				$highest=DB::table('posts')->inRandomOrder()->orderBy('id','ASC')->limit(8)->get();
				@endphp
				<div class="col-md-3 col-sm-3">
					<div class="tab-header">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs nav-justified" role="tablist">
							<li role="presentation" class="active"><a href="#tab21" aria-controls="tab21" role="tab" data-toggle="tab" aria-expanded="false">
								@if(session()->get('lang') == 'english')
							          	Latest News
							    @else
							          	সর্বশেষ
							    @endif</a></li>
							<li role="presentation" ><a href="#tab22" aria-controls="tab22" role="tab" data-toggle="tab" aria-expanded="true">
								@if(session()->get('lang') == 'english')
							          	Favourite
							    @else
							          	জনপ্রিয়
							    @endif</a></li>
							<li role="presentation" ><a href="#tab23" aria-controls="tab23" role="tab" data-toggle="tab" aria-expanded="true">
								@if(session()->get('lang') == 'english')
							          	Highest Read
							    @else
							          	পঠিত 
							    @endif</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content ">
							<div role="tabpanel" class="tab-pane in active" id="tab21">
								<div class="news-titletab">
									@foreach($latest as $row)
										@php
											$slug=preg_replace('/\s+/u', '-', trim($row->title_bn));
										@endphp
									    <div class="news-title-02">
										    <h4 class="heading-03"><a href="{{ URL::to('view-post/'.$row->id.'/'.$slug) }}">
										    		@if(session()->get('lang') == 'english')
							          					{{ $row->title_en }}
												    @else
												          	{{ $row->title_bn }}
												    @endif
										    </a> </h4>
								     	</div>
								    @endforeach
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab22">
								<div class="news-titletab">
								  @foreach($favourite as $row)
								  		@php
											$slug=preg_replace('/\s+/u', '-', trim($row->title_bn));
										@endphp
									    <div class="news-title-02">
										    <h4 class="heading-03"><a href="{{ URL::to('view-post/'.$row->id.'/'.$slug) }}">
										    		@if(session()->get('lang') == 'english')
							          					{{ $row->title_en }}
												    @else
												          	{{ $row->title_bn }}
												    @endif
										    </a> </h4>
								     	</div>
								    @endforeach
									
								</div>                                          
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab23">	
								<div class="news-titletab">
									 @foreach($highest as $row)										
									 	@php
											$slug=preg_replace('/\s+/u', '-', trim($row->title_bn));
										@endphp
									    <div class="news-title-02">
										    <h4 class="heading-03"><a href="{{ URL::to('view-post/'.$row->id.'/'.$slug) }}">
										    		@if(session()->get('lang') == 'english')
							          					{{ $row->title_en }}
												    @else
												          	{{ $row->title_bn }}
												    @endif
										    </a> </h4>
								     	</div>
								    @endforeach
								</div>						                                          
							</div>
						</div>
					</div>
					<!-- Namaj Times -->
					@php
						$prayer = DB::table('namaz')->first();
					@endphp

					<div class="cetagory-title-03">
						@if(session()->get('lang')== 'english')
							   Prayer times
							@else
							  নামাজের সময়সূচি 
							  @endif
					</div>
					<table class="table">
						<tr>
							<th>
							@if(session()->get('lang')== 'english')
							  Fajr
							@else
							  ফজর 
							  @endif
							</th>
							<th>{{ $prayer->fajr }}</th>
						</tr>
						<tr>
							<th>
							@if(session()->get('lang')== 'english')
							  Johr
							@else
							  যোহর 
							  @endif
							</th>
							<th>{{ $prayer->johr }}</th>
						</tr>
						<tr>
							<th>
							@if(session()->get('lang')== 'english')
							  Asor
							@else
							  আছর 
							  @endif
							</th>
							<th>{{ $prayer->asor }}</th>
						</tr>
						<tr>
							<th>
							@if(session()->get('lang')== 'english')
							  Magrib
							@else
							  মাগরিব  
							  @endif
							</th>
							<th>{{ $prayer->magrib }}</th>
						</tr>
						<tr>
							<th>
							@if(session()->get('lang')== 'english')
							  Esha
							@else
							  এশা 
							  @endif
							</th>
							<th>{{ $prayer->esha }}</th>
						</tr>
						<tr>
							<th>
							@if(session()->get('lang')== 'english')
							  Jummah
							@else
							  জুম্মা 
							  @endif
							</th>
							<th>{{ $prayer->jummah }}</th>
						</tr>
					</table>
					<!-- Namaj Times -->

					<div class="cetagory-title-03">পুরানো সংবাদ  </div>
					<form action="" method="post">
						<div class="old-news-date">
						   <input type="text" name="from" placeholder="From Date" required="">
						   <input type="text" name="" placeholder="To Date">			
						</div>
						<div class="old-date-button">
							<input type="submit" value="খুজুন ">
						</div>
				   </form>
				   <!-- news -->
				   <br><br><br><br><br>
					@php
						$web = DB::table('websites')->get();
					@endphp

					<div class="cetagory-title-03">
						@if(session()->get('lang')== 'english')
							   Important Websites
							@else
							  গুরুত্বপূর্ণ ওয়েবসাইট 
							  @endif
					</div>
				   <div class="">
				   	@foreach($web as $row )
					   	<div class="news-title-02">
					   		<h4 class="heading-03"><a href="{{ $row->website_link }}" target="_blank"><i class="fa fa-check" aria-hidden="true"></i>
					   		@if(Session()->get('lang')=='english')
					   			{{ $row->website_name }}
					   		@else
					   		{{ $row->website_name_en }}
					   		@endif
					   		</a> </h4>
					   	</div>
				   	@endforeach
				   </div>

				</div>
			</div>
		</div>
	</section><!-- /.3rd-news-section-close -->

	<!-- gallery-section-start -->	
	<section class="news-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-8 col-sm-7">
					<div class="gallery_cetagory-title">					
						@if(session()->get('lang') == 'english')
						      Photo Gallery
					@else
							ফটো গ্যালারি
					@endif
				</div>
				@php
				$photobig=DB::table('photos')->where('type',1)->orderBy('id','DESC')->first();
				$photosmall=DB::table('photos')->where('type',0)->orderBy('id','DESC')->limit(5)->get();
				@endphp
					<div class="row">

	                    <div class="col-md-8 col-sm-8">
	                        <div class="photo_screen">
	                            <div class="myPhotos" style="width:100%">
                                      <img src="{{ asset($photobig->photo)}}"  alt="Avatar">
	                            </div>
	                        </div>
	                    </div>

	                    <div class="col-md-4 col-sm-4">
	                        <div class="photo_list_bg">
	                            @foreach($photosmall as $row)
	                            <div class="photo_img photo_border active">
	                                <img src="{{ asset($row->photo)}}" alt="image" onclick="currentDiv(1)">
	                                <div class="heading-03">
	                                   {{ $row->title }}
	                                </div>
	                            </div>
	                            @endforeach


	                        </div>
	                    </div>
	                </div>

	                <!--=======================================
                    Video Gallery clickable jquary  start
                ========================================-->

                            <script>
                                    var slideIndex = 1;
                                    showDivs(slideIndex);

                                    function plusDivs(n) {
                                      showDivs(slideIndex += n);
                                    }

                                    function currentDiv(n) {
                                      showDivs(slideIndex = n);
                                    }

                                    function showDivs(n) {
                                      var i;
                                      var x = document.getElementsByClassName("myPhotos");
                                      var dots = document.getElementsByClassName("demo");
                                      if (n > x.length) {slideIndex = 1}
                                      if (n < 1) {slideIndex = x.length}
                                      for (i = 0; i < x.length; i++) {
                                         x[i].style.display = "none";
                                      }
                                      for (i = 0; i < dots.length; i++) {
                                         dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
                                      }
                                      x[slideIndex-1].style.display = "block";
                                      dots[slideIndex-1].className += " w3-opacity-off";
                                    }
                                </script>

                <!--=======================================
                    Video Gallery clickable  jquary  close
                =========================================-->

				</div>
				<div class="col-md-4 col-sm-5">
					<div class="gallery_cetagory-title">						
						@if(session()->get('lang') == 'english')
						    Video Gallery
						    
					@else
							 ভিডিও  গ্যালারি 
					@endif </div>
            @php
				$videobig=DB::table('videos')->where('type',1)->orderBy('id','DESC')->first();
				$videosmall=DB::table('videos')->where('type',0)->orderBy('id','DESC')->limit(5)->get();
				@endphp
					<div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="video_screen">
                                <div class="myVideos" style="width:100%">
                                    <div class="embed-responsive embed-responsive-16by9 embed-responsive-item">
                                    <iframe width="853" height="480" src="https://www.youtube.com/embed/{{  $videobig->embed_code }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                        
                            <div class="gallery_sec owl-carousel">
                            	@foreach($videosmall as $row)
                                <div class="video_image" style="width:100%" onclick="currentDivs(1)">
                                   <div class="embed-responsive embed-responsive-16by9 embed-responsive-item">
                                    <iframe width="200" height="140" src="https://www.youtube.com/embed/{{  $row->embed_code }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                                </div>
                                @endforeach
                            

                            </div>
                        </div>
                    </div>


                    <script>
                        var slideIndex = 1;
                        showDivss(slideIndex);

                        function plusDivs(n) {
                          showDivss(slideIndex += n);
                        }

                        function currentDivs(n) {
                          showDivss(slideIndex = n);
                        }

                        function showDivss(n) {
                          var i;
                          var x = document.getElementsByClassName("myVideos");
                          var dots = document.getElementsByClassName("demo");
                          if (n > x.length) {slideIndex = 1}
                          if (n < 1) {slideIndex = x.length}
                          for (i = 0; i < x.length; i++) {
                             x[i].style.display = "none";
                          }
                          for (i = 0; i < dots.length; i++) {
                             dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
                          }
                          x[slideIndex-1].style.display = "block";
                          dots[slideIndex-1].className += " w3-opacity-off";
                        }
                    </script>

				</div>
			</div>
		</div>
	</section><!-- /.gallery-section-close -->

<script type="text/javascript">
  $(document).ready(function() {
    $('select[name="dist_id"]').on('change', function(){
        var dist_id = $(this).val();
        if(dist_id) {
           $.ajax({
               url: "{{  url('/get/subdist/frontend/') }}/"+dist_id,
               type:"GET",
               dataType:"json",
               success:function(data) { 
                  $("#subdist_id").empty();
                    $.each(data,function(key,value){
                      $("#subdist_id").append('<option value="'+value.id+'">'+value.subdistrict_bn+'</option>');
                    });
                },    
           });
        } else {
           alert('danger');
        }
    });
  });
</script>

@endsection