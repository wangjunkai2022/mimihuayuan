.class public Lcom/umeng/commonsdk/debug/UMLogCommon;
.super Ljava/lang/Object;
.source "UMLogCommon.java"


# static fields
.field public static final SC_10001:Ljava/lang/String;

.field public static final SC_10002:Ljava/lang/String;

.field public static final SC_10003:Ljava/lang/String; = "\u7edf\u8ba1SDK\u521d\u59cb\u5316\u6210\u529f"

.field public static final SC_10004:Ljava/lang/String; = "PUSH AppKey\u8bbe\u7f6e\u6210\u529f"

.field public static final SC_10005:Ljava/lang/String; = "PUSH Channel\u8bbe\u7f6e\u6210\u529f"

.field public static final SC_10006:Ljava/lang/String; = "Share AppKey\u8bbe\u7f6e\u6210\u529f"

.field public static final SC_10007:Ljava/lang/String;

.field public static final SC_10008:Ljava/lang/String; = "AppKey\u6539\u53d8!!!"

.field public static final SC_10009:Ljava/lang/String; = "PUSH Secret\u8bbe\u7f6e\u6210\u529f"

.field public static final SC_10010:Ljava/lang/String; = "\u9519\u8bef\u5206\u6790SDK\u521d\u59cb\u5316\u6210\u529f"

.field public static final SC_10011:Ljava/lang/String; = "\u8bf7\u6ce8\u610f\uff1a\u60a8init\u63a5\u53e3\u4e2d\u8bbe\u7f6e\u7684AppKey\u662f@\uff0cmanifest\u4e2d\u8bbe\u7f6e\u7684AppKey\u662f#\uff0cinit\u63a5\u53e3\u8bbe\u7f6e\u7684AppKey\u4f1a\u8986\u76d6manifest\u4e2d\u8bbe\u7f6e\u7684AppKey"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "\u4e0d\u80fd\u5728\u975e\u4e3b\u8fdb\u7a0b\u8fdb\u884c\u521d\u59cb\u5316|\u76ee\u524d\u53ea\u80fd\u5728\u4e3b\u8fdb\u7a0b\u8fdb\u884c\u521d\u59cb\u5316\uff0c\u5982\u4f55\u6b63\u786e\u521d\u59cb\u5316\u8bf7\u8be6\u89c1\u5730\u5740\uff1a"

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "67292"

    .line 2
    invoke-static {v1, v0}, Lf/b/a/a/a;->h(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/debug/UMLogCommon;->SC_10001:Ljava/lang/String;

    const-string v0, "\u4e0d\u80fd\u5728\u975eApplication\u7684onCreate\u65b9\u6cd5\u4e2d\u8fdb\u884c\u521d\u59cb\u5316|\u76ee\u524d\u53ea\u80fd\u5728Application\u7684onCreate\u65b9\u6cd5\u4e2d\u8fdb\u884c\u521d\u59cb\u5316\uff0c\u5982\u4f55\u6b63\u786e\u521d\u59cb\u5316\u8bf7\u8be6\u89c1\u5730\u5740\uff1a"

    .line 3
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lf/b/a/a/a;->h(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/debug/UMLogCommon;->SC_10002:Ljava/lang/String;

    const-string v0, "AppKey\u4e0d\u80fd\u4e3a\u7a7a|\u60a8\u5fc5\u987b\u6b63\u786e\u8bbe\u7f6eAppKey\uff0c\u5982\u4f55\u6b63\u786e\u521d\u59cb\u5316\u8bf7\u8be6\u89c1\u5730\u5740\uff1a"

    .line 5
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lf/b/a/a/a;->h(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/debug/UMLogCommon;->SC_10007:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
