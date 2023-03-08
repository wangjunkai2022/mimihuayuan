package com.comeback.data.ui.tv91.bean;

import f.e.a.e;
import f.e.a.f.k;
import f.e.a.k.b;
import f.i.b.j;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class TiktopParam extends k {
    public String Action;
    public MessageBean Message;

    /* loaded from: classes.dex */
    public static class MessageBean {
        public String Account;
        public String Data;
        public List<Integer> ID;
        public String MemberID;
        public int MovieID;
        public int PageIndex;
        public int PageSize;
        public String Password;
        public int SourceId;
        public String Token;
        public int Type;

        public String getAccount() {
            return this.Account;
        }

        public String getData() {
            return this.Data;
        }

        public List<Integer> getID() {
            return this.ID;
        }

        public String getMemberID() {
            return this.MemberID;
        }

        public int getMovieID() {
            return this.MovieID;
        }

        public int getPageIndex() {
            return this.PageIndex;
        }

        public int getPageSize() {
            return this.PageSize;
        }

        public String getPassword() {
            return this.Password;
        }

        public int getSourceId() {
            return this.SourceId;
        }

        public String getToken() {
            return this.Token;
        }

        public int getType() {
            return this.Type;
        }

        public void setAccount(String str) {
            this.Account = str;
        }

        public void setData(String str) {
            this.Data = str;
        }

        public void setID(List<Integer> list) {
            this.ID = list;
        }

        public void setMemberID(String str) {
            this.MemberID = str;
        }

        public void setMovieID(int i2) {
            this.MovieID = i2;
        }

        public void setPageIndex(int i2) {
            this.PageIndex = i2;
        }

        public void setPageSize(int i2) {
            this.PageSize = i2;
        }

        public void setPassword(String str) {
            this.Password = str;
        }

        public void setSourceId(int i2) {
            this.SourceId = i2;
        }

        public void setToken(String str) {
            this.Token = str;
        }

        public void setType(int i2) {
            this.Type = i2;
        }
    }

    public static Map<String, String> buildChannelListParams(int i2, int i3) {
        TiktopParam tiktopParam = new TiktopParam();
        tiktopParam.setAction(e.a("cAcXKQQFUFYA"));
        MessageBean messageBean = new MessageBean();
        messageBean.setPageIndex(i3);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i2));
        messageBean.setID(arrayList);
        messageBean.setType(1);
        messageBean.setPageSize(30);
        messageBean.setData("");
        tiktopParam.setMessage(messageBean);
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("UwMXBQ=="), new j().j(tiktopParam));
        return hashMap;
    }

    public static TiktopParam buildChannelParams() {
        TiktopParam tiktopParam = new TiktopParam();
        tiktopParam.setAction(e.a("cAcXJwMSV10WCg=="));
        return tiktopParam;
    }

    public static Map<String, String> buildLogin() {
        TiktopParam tiktopParam = new TiktopParam();
        tiktopParam.setAction(e.a("ew0EDQU="));
        MessageBean messageBean = new MessageBean();
        messageBean.setAccount(e.a("AFVbXFJKCAFAJlMKGQMPRVQNDg=="));
        messageBean.setPassword(e.a("AFVbXFJKCgFC"));
        tiktopParam.setMessage(messageBean);
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("UwMXBQ=="), new j().j(tiktopParam));
        return hashMap;
    }

    public static TiktopParam buildMovieDetail(int i2) {
        TiktopParam tiktopParam = new TiktopParam();
        tiktopParam.setAction(e.a("cAcXKQQFUFY6CFIIOhMuDloABhY="));
        MessageBean messageBean = new MessageBean();
        messageBean.setMovieID(i2);
        messageBean.setMemberID(b.p);
        messageBean.setToken(b.o);
        tiktopParam.setMessage(messageBean);
        return tiktopParam;
    }

    public static Map<String, String> buildMovieInfo(int i2, int i3) {
        TiktopParam tiktopParam = new TiktopParam();
        tiktopParam.setAction(e.a("cAcXKQQFUFY6CFIIOhMuDloABhY="));
        MessageBean messageBean = new MessageBean();
        messageBean.setMovieID(i2);
        messageBean.setSourceId(i3);
        messageBean.setMemberID(b.p);
        messageBean.setToken(b.o);
        tiktopParam.setMessage(messageBean);
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("UwMXBQ=="), new j().j(tiktopParam));
        return hashMap;
    }

    public static Map<String, String> buildPlayUrl(int i2) {
        TiktopParam tiktopParam = new TiktopParam();
        tiktopParam.setAction(e.a("Zw4CHSYcT1oWVA=="));
        MessageBean messageBean = new MessageBean();
        messageBean.setMovieID(i2);
        messageBean.setType(1);
        messageBean.setMemberID(b.p);
        messageBean.setToken(b.o);
        tiktopParam.setMessage(messageBean);
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("UwMXBQ=="), new j().j(tiktopParam));
        return hashMap;
    }

    public static Map<String, String> buildSearchParams(int i2, String str) {
        TiktopParam tiktopParam = new TiktopParam();
        tiktopParam.setAction(e.a("cAcXKQQFUFYA"));
        MessageBean messageBean = new MessageBean();
        messageBean.setPageIndex(i2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(-1);
        messageBean.setID(arrayList);
        messageBean.setType(1);
        messageBean.setPageSize(20);
        messageBean.setData(str);
        tiktopParam.setMessage(messageBean);
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("UwMXBQ=="), new j().j(tiktopParam));
        return hashMap;
    }

    public static Map<String, String> buildStarList(int i2) {
        TiktopParam tiktopParam = new TiktopParam();
        tiktopParam.setAction(e.a("cAcXJQgHVkFB"));
        MessageBean messageBean = new MessageBean();
        messageBean.setPageIndex(i2);
        messageBean.setPageSize(90);
        tiktopParam.setMessage(messageBean);
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("UwMXBQ=="), new j().j(tiktopParam));
        return hashMap;
    }

    public static Map<String, String> buildStarListParams(int i2, int i3) {
        TiktopParam tiktopParam = new TiktopParam();
        tiktopParam.setAction(e.a("cAcXKQQFUFYA"));
        MessageBean messageBean = new MessageBean();
        messageBean.setPageIndex(i3);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i2));
        messageBean.setID(arrayList);
        messageBean.setType(5);
        messageBean.setPageSize(30);
        messageBean.setData("");
        tiktopParam.setMessage(messageBean);
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("UwMXBQ=="), new j().j(tiktopParam));
        return hashMap;
    }

    public static Map<String, String> buildTagListParams(int i2, int i3) {
        TiktopParam tiktopParam = new TiktopParam();
        tiktopParam.setAction(e.a("cAcXKQQFUFYA"));
        MessageBean messageBean = new MessageBean();
        messageBean.setPageIndex(i3);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i2));
        messageBean.setID(arrayList);
        messageBean.setType(2);
        messageBean.setPageSize(30);
        messageBean.setData("");
        tiktopParam.setMessage(messageBean);
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("UwMXBQ=="), new j().j(tiktopParam));
        return hashMap;
    }

    public static Map<String, String> buildTags() {
        TiktopParam tiktopParam = new TiktopParam();
        tiktopParam.setAction(e.a("cAcXJwcSSkA="));
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("UwMXBQ=="), new j().j(tiktopParam));
        return hashMap;
    }

    public String getAction() {
        return this.Action;
    }

    public MessageBean getMessage() {
        return this.Message;
    }

    public void setAction(String str) {
        this.Action = str;
    }

    public void setMessage(MessageBean messageBean) {
        this.Message = messageBean;
    }

    @Override // f.e.a.f.k
    public String toJson() {
        String str;
        try {
            str = URLEncoder.encode(new j().j(this), e.a("YjYlSVM="));
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            str = "";
        }
        return e.a("UwMXBVY=") + str;
    }
}
