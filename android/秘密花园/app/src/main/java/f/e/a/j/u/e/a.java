package f.e.a.j.u.e;

import android.text.TextUtils;
import com.comeback.data.ui.jav.bean.Actor;
import com.comeback.data.ui.jav.bean.ActorDetail;
import com.comeback.data.ui.jav.bean.Download;
import com.comeback.data.ui.jav.bean.Video;
import com.comeback.data.ui.jav.bean.VideoDetail;
import f.e.a.e;
import j.b;
import java.util.ArrayList;
import java.util.Iterator;
import k.a.e.f;
import k.a.e.h;
import k.a.g.c;

/* compiled from: ParseUtil.java */
/* loaded from: classes.dex */
public class a {
    public static String a = e.a("XxYXFBhJFhwZB0IDGlpTXRkBDAk=");

    public static ArrayList<Actor> a(String str) {
        ArrayList<Actor> arrayList = new ArrayList<>();
        Iterator<h> it = b.u(str).I(e.a("VQ0bRAoQTVwBS1YIAA==")).iterator();
        while (it.hasNext()) {
            h next = it.next();
            Actor actor = new Actor();
            actor.setName(next.J(e.a("RBYRCwUU")).get(0).L());
            actor.setUrl(next.J(e.a("Vg==")).get(0).b(e.a("XxAGAg==")));
            String b = next.I(e.a("VhQCEAoB")).get(0).b(e.a("RBAA"));
            if (!TextUtils.isEmpty(b)) {
                if (!b.startsWith(e.a("XxYXFA=="))) {
                    if (b.contains(e.a("QhAPOEM="))) {
                        b = b.split(e.a("QhAPOEM="))[1].replace(e.a("Hg=="), "");
                    } else {
                        b = f.b.a.a.a.l(new StringBuilder(), a, b);
                    }
                }
                actor.setImg(b);
                arrayList.add(actor);
            }
        }
        return arrayList;
    }

    public static ActorDetail b(String str) {
        ActorDetail actorDetail = new ActorDetail();
        f u = b.u(str);
        actorDetail.setName(u.I(e.a("VgEXCxleSlYQEl0IFkcNCloH")).get(0).L());
        c I = u.I(e.a("RAcAEAIcVx4eA0AG"));
        if (I.size() > 0) {
            actorDetail.setSecondName(I.get(0).L());
        }
        if (I.size() > 1) {
            actorDetail.setCount(I.get(1).L());
        }
        actorDetail.setList(d(str).getList());
        return actorDetail;
    }

    public static VideoDetail c(String str) {
        VideoDetail videoDetail = new VideoDetail();
        f u = b.u(str);
        if (u.I(e.a("WgcQFwoUXBMaFRkQGRgNAlkF")).size() != 0) {
            videoDetail.setError(e.a("38XAgvXj0KfqjpvInuL1ja3ghfPLm5aWltuFgPHthf+BhdnX"));
            return videoDetail;
        }
        videoDetail.setUid(u.I(e.a("RwMNAQdeW18cBV9HHgMRGENPAQgEEFI=")).get(0).O());
        c I = u.I(e.a("RwMNAQdeW18cBV8="));
        if (I.size() > 0) {
            videoDetail.setDate(I.get(0).O());
        }
        if (I.size() > 2) {
            videoDetail.setDuration(I.get(2).O());
        }
        if (I.size() > 4) {
            videoDetail.setShop(I.get(4).O());
        }
        if (I.size() > 5) {
            videoDetail.setPublisher(I.get(5).O());
        }
        if (I.size() > 6) {
            videoDetail.setScore(I.get(6).O());
        }
        if (I.size() > 8) {
            videoDetail.setTag(I.get(8).O());
        }
        if (I.size() > 9) {
            videoDetail.setActor(I.get(9).O());
        }
        videoDetail.setName(u.I(e.a("QwsXCA5TUEBeUg==")).get(0).O());
        videoDetail.setImg(u.I(e.a("QQsHAQReWlwFA0Y=")).get(0).b(e.a("RBAA")));
        try {
            c J = u.I(e.a("QwsPAUYaVFIUA0dHCBgGHV4HFEkCHlhUFhU=")).get(0).J(e.a("Xg8E"));
            ArrayList<String> arrayList = new ArrayList<>();
            Iterator<h> it = J.iterator();
            while (it.hasNext()) {
                String b = it.next().b(e.a("RBAA"));
                if (!TextUtils.isEmpty(b)) {
                    arrayList.add(b);
                }
            }
            videoDetail.setPreview_images(arrayList);
        } catch (Exception unused) {
            e.a("aD08Ow==");
            e.a("0fXDjcn30ZT7g6/Z");
            f.e.a.k.f.b();
        }
        try {
            videoDetail.setPreview_video(u.H(e.a("RxAGEgIWTh4FD1ACFw==")).J(e.a("RA0WFggW")).get(0).b(e.a("RBAA")));
        } catch (Exception unused2) {
            e.a("aD08Ow==");
            e.a("0fXDjcn30ZT7jpPhkcjy");
            f.e.a.k.f.b();
        }
        c I2 = u.I(e.a("WgMECg4HFF0SC1E="));
        if (I2.size() != 0) {
            try {
                ArrayList<Download> arrayList2 = new ArrayList<>();
                Iterator<h> it2 = I2.iterator();
                while (it2.hasNext()) {
                    Download download = new Download();
                    h hVar = it2.next().J(e.a("Vg==")).get(0);
                    download.setMagnet(hVar.b(e.a("XxAGAg==")));
                    download.setDetail(hVar.O());
                    arrayList2.add(download);
                }
                videoDetail.setDownloads(arrayList2);
            } catch (Exception unused3) {
                e.a("aD08Ow==");
                e.a("0MHigeHo0KDNgLrCkM3AjanyivDym5ac");
                f.e.a.k.f.b();
            }
        } else {
            e.a("aD08Ow==");
            e.a("0fXDg8jy3Lnoj6fZnuTG");
            f.e.a.k.f.b();
        }
        c I3 = u.I(e.a("QwsPAUYaVFIUA0dHDAMPDhoRDgUHHw=="));
        if (I3.size() > 0) {
            c I4 = I3.get(0).I(e.a("QwsPAUYaTVYe"));
            try {
                ArrayList<Video> arrayList3 = new ArrayList<>();
                Iterator<h> it3 = I4.iterator();
                while (it3.hasNext()) {
                    h next = it3.next();
                    Video video = new Video();
                    video.setUrl(next.b(e.a("XxAGAg==")));
                    video.setName(next.b(e.a("QwsXCA4=")));
                    video.setUid(next.O());
                    video.setImg(next.J(e.a("Xg8E")).get(0).b(e.a("RBAA")));
                    arrayList3.add(video);
                }
                videoDetail.setSameVideo(arrayList3);
            } catch (Exception unused4) {
                e.a("aD08Ow==");
                e.a("YyNLgeviENrx4tHgwozf/97j7USD1JrV7fbd8+GCzMQ=");
                f.e.a.k.f.b();
            }
        } else {
            e.a("aD08Ow==");
            e.a("0fXDREsneBuW5qVOkejnjrDYhdj/mri9");
            f.e.a.k.f.b();
        }
        if (I3.size() > 1) {
            c I5 = I3.get(1).I(e.a("QwsPAUYaTVYe"));
            try {
                ArrayList<Video> arrayList4 = new ArrayList<>();
                Iterator<h> it4 = I5.iterator();
                while (it4.hasNext()) {
                    h next2 = it4.next();
                    Video video2 = new Video();
                    video2.setUrl(next2.b(e.a("XxAGAg==")));
                    video2.setName(next2.b(e.a("QwsXCA4=")));
                    video2.setUid(next2.O());
                    video2.setImg(next2.J(e.a("Xg8E")).get(0).b(e.a("RBAA")));
                    arrayList4.add(video2);
                }
                videoDetail.setGuessLike(arrayList4);
            } catch (Exception unused5) {
                e.a("aD08Ow==");
                e.a("09/DgeTc0bDOgo34nfz/jZrDQ4zM0N+t44+g/pDFzA==");
                f.e.a.k.f.b();
            }
        } else {
            e.a("aD08Ow==");
            e.a("0fXDREuXhJOW6ZuP+9eH0qiH9fiN3pg=");
            f.e.a.k.f.b();
        }
        return videoDetail;
    }

    /* JADX WARNING: Removed duplicated region for block: B:57:0x00a4 A[EDGE_INSN: B:57:0x00a4->B:24:0x00a4 ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.comeback.data.ui.jav.bean.VideoList d(java.lang.String r11) {
        /*
        // Method dump skipped, instructions count: 469
        */
        throw new UnsupportedOperationException("Method not decompiled: f.e.a.j.u.e.a.d(java.lang.String):com.comeback.data.ui.jav.bean.VideoList");
    }
}
