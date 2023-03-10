package com.comeback.data.ui.nana.bean;

import android.text.TextUtils;
import f.e.a.e;
import f.e.a.f.k;
import f.e.a.j.h0.m.d;
import f.i.b.b0.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class VideoInfo extends k {
    public ResponseBean response;
    public StatusBean status;

    /* loaded from: classes.dex */
    public static class ResponseBean {
        public List<String> actor;
        public String cover;
        public int release_date;
        public String thumb;
        public int upload_date;
        public List<String> video_category;
        public String video_description;
        public int video_duration;
        public String video_id;
        public boolean video_like;
        public String video_number;
        public String video_publisher;
        public List<String> video_tags;
        public String video_title;
        public VideoUrlsBean video_urls;
        public List<Integer> video_views;

        /* loaded from: classes.dex */
        public static class VideoUrlsBean {
            @b("240")
            public String _$240;
            @b("480")
            public String _$480;
            public String intro;

            public String getIntro() {
                return this.intro;
            }

            public String get_$240() {
                return this._$240;
            }

            public String get_$480() {
                return this._$480;
            }

            public void setIntro(String str) {
                this.intro = str;
            }

            public void set_$240(String str) {
                this._$240 = str;
            }

            public void set_$480(String str) {
                this._$480 = str;
            }
        }

        public List<String> getActor() {
            return this.actor;
        }

        public String getCover() {
            return this.cover;
        }

        public List<String> getPlayName() {
            ArrayList arrayList = new ArrayList();
            VideoUrlsBean video_urls = getVideo_urls();
            if (!TextUtils.isEmpty(video_urls.get_$480())) {
                arrayList.add(e.a("A1pTNA=="));
            }
            if (!TextUtils.isEmpty(video_urls.get_$240())) {
                arrayList.add(e.a("BVZTNA=="));
            }
            if (!TextUtils.isEmpty(video_urls.getIntro())) {
                arrayList.add(e.a("3sDnjMz7"));
            }
            return arrayList;
        }

        public List<String> getPlayUrl() {
            ArrayList arrayList = new ArrayList();
            VideoUrlsBean video_urls = getVideo_urls();
            if (!TextUtils.isEmpty(video_urls.get_$480())) {
                arrayList.add(d.f3956c + video_urls.get_$480());
            }
            if (!TextUtils.isEmpty(video_urls.get_$240())) {
                arrayList.add(d.f3956c + video_urls.get_$240());
            }
            if (!TextUtils.isEmpty(video_urls.getIntro())) {
                arrayList.add(d.f3956c + video_urls.getIntro());
            }
            return arrayList;
        }

        public int getRelease_date() {
            return this.release_date;
        }

        public String getThumb() {
            return this.thumb;
        }

        public int getUpload_date() {
            return this.upload_date;
        }

        public List<String> getVideo_category() {
            return this.video_category;
        }

        public String getVideo_description() {
            return this.video_description;
        }

        public int getVideo_duration() {
            return this.video_duration;
        }

        public String getVideo_id() {
            return this.video_id;
        }

        public String getVideo_number() {
            return this.video_number;
        }

        public String getVideo_publisher() {
            return this.video_publisher;
        }

        public List<String> getVideo_tags() {
            return this.video_tags;
        }

        public String getVideo_title() {
            return this.video_title;
        }

        public VideoUrlsBean getVideo_urls() {
            return this.video_urls;
        }

        public List<Integer> getVideo_views() {
            return this.video_views;
        }

        public boolean isVideo_like() {
            return this.video_like;
        }

        public void setActor(List<String> list) {
            this.actor = list;
        }

        public void setCover(String str) {
            this.cover = str;
        }

        public void setRelease_date(int i2) {
            this.release_date = i2;
        }

        public void setThumb(String str) {
            this.thumb = str;
        }

        public void setUpload_date(int i2) {
            this.upload_date = i2;
        }

        public void setVideo_category(List<String> list) {
            this.video_category = list;
        }

        public void setVideo_description(String str) {
            this.video_description = str;
        }

        public void setVideo_duration(int i2) {
            this.video_duration = i2;
        }

        public void setVideo_id(String str) {
            this.video_id = str;
        }

        public void setVideo_like(boolean z) {
            this.video_like = z;
        }

        public void setVideo_number(String str) {
            this.video_number = str;
        }

        public void setVideo_publisher(String str) {
            this.video_publisher = str;
        }

        public void setVideo_tags(List<String> list) {
            this.video_tags = list;
        }

        public void setVideo_title(String str) {
            this.video_title = str;
        }

        public void setVideo_urls(VideoUrlsBean videoUrlsBean) {
            this.video_urls = videoUrlsBean;
        }

        public void setVideo_views(List<Integer> list) {
            this.video_views = list;
        }
    }

    /* loaded from: classes.dex */
    public static class StatusBean {
        public int code;
        public String message;

        public int getCode() {
            return this.code;
        }

        public String getMessage() {
            return this.message;
        }

        public void setCode(int i2) {
            this.code = i2;
        }

        public void setMessage(String str) {
            this.message = str;
        }
    }

    public ResponseBean getResponse() {
        return this.response;
    }

    public StatusBean getStatus() {
        return this.status;
    }

    public void setResponse(ResponseBean responseBean) {
        this.response = responseBean;
    }

    public void setStatus(StatusBean statusBean) {
        this.status = statusBean;
    }
}
