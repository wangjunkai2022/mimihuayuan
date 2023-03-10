.class public final Lf/i/a/a/h1/u0/t/h;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Lf/i/a/a/l1/e0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/u0/t/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/a/a/l1/e0$a<",
        "Lf/i/a/a/h1/u0/t/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Ljava/util/regex/Pattern;

.field public static final B:Ljava/util/regex/Pattern;

.field public static final C:Ljava/util/regex/Pattern;

.field public static final D:Ljava/util/regex/Pattern;

.field public static final E:Ljava/util/regex/Pattern;

.field public static final F:Ljava/util/regex/Pattern;

.field public static final G:Ljava/util/regex/Pattern;

.field public static final H:Ljava/util/regex/Pattern;

.field public static final I:Ljava/util/regex/Pattern;

.field public static final J:Ljava/util/regex/Pattern;

.field public static final K:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;

.field public static final r:Ljava/util/regex/Pattern;

.field public static final s:Ljava/util/regex/Pattern;

.field public static final t:Ljava/util/regex/Pattern;

.field public static final u:Ljava/util/regex/Pattern;

.field public static final v:Ljava/util/regex/Pattern;

.field public static final w:Ljava/util/regex/Pattern;

.field public static final x:Ljava/util/regex/Pattern;

.field public static final y:Ljava/util/regex/Pattern;

.field public static final z:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lf/i/a/a/h1/u0/t/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->b:Ljava/util/regex/Pattern;

    const-string v0, "VIDEO=\"(.+?)\""

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->c:Ljava/util/regex/Pattern;

    const-string v0, "AUDIO=\"(.+?)\""

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->d:Ljava/util/regex/Pattern;

    const-string v0, "SUBTITLES=\"(.+?)\""

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->e:Ljava/util/regex/Pattern;

    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->f:Ljava/util/regex/Pattern;

    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->g:Ljava/util/regex/Pattern;

    const-string v0, "CHANNELS=\"(.+?)\""

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->h:Ljava/util/regex/Pattern;

    const-string v0, "CODECS=\"(.+?)\""

    .line 8
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->i:Ljava/util/regex/Pattern;

    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 9
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->j:Ljava/util/regex/Pattern;

    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->k:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->l:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->m:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->n:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->o:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->p:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->q:Ljava/util/regex/Pattern;

    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->r:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 18
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->s:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->t:Ljava/util/regex/Pattern;

    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->u:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMAT=\"(.+?)\""

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->v:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->w:Ljava/util/regex/Pattern;

    const-string v0, "URI=\"(.+?)\""

    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->x:Ljava/util/regex/Pattern;

    const-string v0, "IV=([^,.*]+)"

    .line 24
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->y:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->z:Ljava/util/regex/Pattern;

    const-string v0, "LANGUAGE=\"(.+?)\""

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->A:Ljava/util/regex/Pattern;

    const-string v0, "NAME=\"(.+?)\""

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->B:Ljava/util/regex/Pattern;

    const-string v0, "GROUP-ID=\"(.+?)\""

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->C:Ljava/util/regex/Pattern;

    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->D:Ljava/util/regex/Pattern;

    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->E:Ljava/util/regex/Pattern;

    const-string v0, "AUTOSELECT"

    .line 31
    invoke-static {v0}, Lf/i/a/a/h1/u0/t/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->F:Ljava/util/regex/Pattern;

    const-string v0, "DEFAULT"

    .line 32
    invoke-static {v0}, Lf/i/a/a/h1/u0/t/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->G:Ljava/util/regex/Pattern;

    const-string v0, "FORCED"

    .line 33
    invoke-static {v0}, Lf/i/a/a/h1/u0/t/h;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->H:Ljava/util/regex/Pattern;

    const-string v0, "VALUE=\"(.+?)\""

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->I:Ljava/util/regex/Pattern;

    const-string v0, "IMPORT=\"(.+?)\""

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->J:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/u0/t/h;->K:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lf/i/a/a/h1/u0/t/e;->l:Lf/i/a/a/h1/u0/t/e;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lf/i/a/a/h1/u0/t/h;->a:Lf/i/a/a/h1/u0/t/e;

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/h1/u0/t/e;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lf/i/a/a/h1/u0/t/h;->a:Lf/i/a/a/h1/u0/t/e;

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "NO"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "YES"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lf/i/a/a/z0/e$b;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lf/i/a/a/z0/e$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    .line 1
    sget-object v0, Lf/i/a/a/h1/u0/t/h;->w:Ljava/util/regex/Pattern;

    const-string v1, "1"

    .line 2
    invoke-static {p0, v0, v1, p2}, Lf/i/a/a/h1/u0/t/h;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const-string v5, "video/mp4"

    if-eqz v2, :cond_0

    .line 4
    sget-object p1, Lf/i/a/a/h1/u0/t/h;->x:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Lf/i/a/a/z0/e$b;

    sget-object p2, Lf/i/a/a/q;->d:Ljava/util/UUID;

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {p1, p2, v5, p0}, Lf/i/a/a/z0/e$b;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_0
    const-string v2, "com.widevine"

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    new-instance p1, Lf/i/a/a/z0/e$b;

    sget-object p2, Lf/i/a/a/q;->d:Ljava/util/UUID;

    invoke-static {p0}, Lf/i/a/a/m1/h0;->O(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "hls"

    invoke-direct {p1, p2, v0, p0}, Lf/i/a/a/z0/e$b;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_1
    const-string v2, "com.microsoft.playready"

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Lf/i/a/a/h1/u0/t/h;->x:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 12
    sget-object p1, Lf/i/a/a/q;->e:Ljava/util/UUID;

    invoke-static {p1, p0}, Lc/a/a/b/g/h;->i(Ljava/util/UUID;[B)[B

    move-result-object p0

    .line 13
    new-instance p1, Lf/i/a/a/z0/e$b;

    sget-object p2, Lf/i/a/a/q;->e:Ljava/util/UUID;

    invoke-direct {p1, p2, v5, p0}, Lf/i/a/a/z0/e$b;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SAMPLE-AES-CENC"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "cbcs"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "cenc"

    :goto_1
    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static f(Lf/i/a/a/h1/u0/t/h$a;Ljava/lang/String;)Lf/i/a/a/h1/u0/t/e;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/u0/t/h$a;->a()Z

    move-result v13

    const/4 v14, -0x1

    if-eqz v13, :cond_d

    .line 12
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/u0/t/h$a;->b()Ljava/lang/String;

    move-result-object v13

    const-string v15, "#EXT"

    .line 13
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 14
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v15, "#EXT-X-DEFINE"

    .line 15
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 16
    sget-object v14, Lf/i/a/a/h1/u0/t/h;->B:Ljava/util/regex/Pattern;

    .line 17
    invoke-static {v13, v14, v11}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lf/i/a/a/h1/u0/t/h;->I:Ljava/util/regex/Pattern;

    .line 18
    invoke-static {v13, v15, v11}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 19
    invoke-virtual {v11, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v15, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 20
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const-string v15, "#EXT-X-MEDIA"

    .line 21
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 22
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move/from16 v16, v10

    :goto_2
    move-object/from16 v18, v12

    goto/16 :goto_8

    :cond_3
    const-string v15, "#EXT-X-SESSION-KEY"

    .line 23
    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 24
    sget-object v14, Lf/i/a/a/h1/u0/t/h;->v:Ljava/util/regex/Pattern;

    const-string v15, "identity"

    .line 25
    invoke-static {v13, v14, v15, v11}, Lf/i/a/a/h1/u0/t/h;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 26
    invoke-static {v13, v14, v11}, Lf/i/a/a/h1/u0/t/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lf/i/a/a/z0/e$b;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 27
    sget-object v15, Lf/i/a/a/h1/u0/t/h;->u:Ljava/util/regex/Pattern;

    invoke-static {v13, v15, v11}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 28
    invoke-static {v13}, Lf/i/a/a/h1/u0/t/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 29
    new-instance v15, Lf/i/a/a/z0/e;

    move/from16 v16, v10

    const/4 v10, 0x1

    move-object/from16 v17, v7

    new-array v7, v10, [Lf/i/a/a/z0/e$b;

    const/16 v18, 0x0

    aput-object v14, v7, v18

    .line 30
    invoke-direct {v15, v13, v10, v7}, Lf/i/a/a/z0/e;-><init>(Ljava/lang/String;Z[Lf/i/a/a/z0/e$b;)V

    .line 31
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_4
    move-object/from16 v17, v7

    move/from16 v16, v10

    goto/16 :goto_7

    :cond_5
    move-object/from16 v17, v7

    move/from16 v16, v10

    const-string v7, "#EXT-X-STREAM-INF"

    .line 32
    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "CLOSED-CAPTIONS=NONE"

    .line 33
    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    or-int/2addr v9, v7

    .line 34
    sget-object v7, Lf/i/a/a/h1/u0/t/h;->g:Ljava/util/regex/Pattern;

    invoke-static {v13, v7}, Lf/i/a/a/h1/u0/t/h;->e(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v7

    .line 35
    sget-object v10, Lf/i/a/a/h1/u0/t/h;->b:Ljava/util/regex/Pattern;

    .line 36
    invoke-static {v13, v10, v11}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 37
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 38
    :cond_6
    sget-object v10, Lf/i/a/a/h1/u0/t/h;->i:Ljava/util/regex/Pattern;

    invoke-static {v13, v10, v11}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v22

    .line 39
    sget-object v10, Lf/i/a/a/h1/u0/t/h;->j:Ljava/util/regex/Pattern;

    .line 40
    invoke-static {v13, v10, v11}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string v15, "x"

    .line 41
    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x0

    .line 42
    aget-object v15, v10, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v18, 0x1

    .line 43
    aget-object v10, v10, v18

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lez v15, :cond_8

    if-gtz v10, :cond_7

    goto :goto_3

    :cond_7
    move v14, v10

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v15, -0x1

    :goto_4
    move/from16 v25, v14

    move/from16 v24, v15

    goto :goto_5

    :cond_9
    const/4 v10, -0x1

    const/4 v14, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    .line 44
    :goto_5
    sget-object v10, Lf/i/a/a/h1/u0/t/h;->k:Ljava/util/regex/Pattern;

    .line 45
    invoke-static {v13, v10, v11}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 46
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    move/from16 v26, v10

    goto :goto_6

    :cond_a
    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v26, -0x40800000    # -1.0f

    .line 47
    :goto_6
    sget-object v10, Lf/i/a/a/h1/u0/t/h;->c:Ljava/util/regex/Pattern;

    invoke-static {v13, v10, v11}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 48
    sget-object v14, Lf/i/a/a/h1/u0/t/h;->d:Ljava/util/regex/Pattern;

    invoke-static {v13, v14, v11}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 49
    sget-object v15, Lf/i/a/a/h1/u0/t/h;->e:Ljava/util/regex/Pattern;

    .line 50
    invoke-static {v13, v15, v11}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    move/from16 v34, v9

    .line 51
    sget-object v9, Lf/i/a/a/h1/u0/t/h;->f:Ljava/util/regex/Pattern;

    .line 52
    invoke-static {v13, v9, v11}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 53
    invoke-virtual/range {p0 .. p0}, Lf/i/a/a/h1/u0/t/h$a;->b()Ljava/lang/String;

    move-result-object v13

    .line 54
    invoke-static {v13, v11}, Lf/i/a/a/h1/u0/t/h;->l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 55
    invoke-static {v1, v13}, Lc/a/a/b/g/h;->g1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v20, "application/x-mpegURL"

    move/from16 v23, v7

    .line 57
    invoke-static/range {v18 .. v29}, Lf/i/a/a/b0;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Lf/i/a/a/b0;

    move-result-object v29

    move-object/from16 v18, v12

    .line 58
    new-instance v12, Lf/i/a/a/h1/u0/t/e$b;

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v30, v10

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    move-object/from16 v33, v9

    invoke-direct/range {v27 .. v33}, Lf/i/a/a/h1/u0/t/e$b;-><init>(Landroid/net/Uri;Lf/i/a/a/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_b

    .line 61
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_b
    new-instance v13, Lf/i/a/a/h1/u0/o$b;

    move-object/from16 v19, v8

    int-to-long v7, v7

    move-object/from16 v27, v13

    move-wide/from16 v28, v7

    move-object/from16 v30, v10

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    move-object/from16 v33, v9

    invoke-direct/range {v27 .. v33}, Lf/i/a/a/h1/u0/o$b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v16

    move-object/from16 v7, v17

    move-object/from16 v12, v18

    move-object/from16 v8, v19

    move/from16 v9, v34

    goto/16 :goto_0

    :cond_c
    :goto_7
    move-object/from16 v19, v8

    goto/16 :goto_2

    :goto_8
    move/from16 v10, v16

    move-object/from16 v7, v17

    move-object/from16 v12, v18

    move-object/from16 v8, v19

    goto/16 :goto_0

    :cond_d
    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move/from16 v16, v10

    move-object/from16 v18, v12

    .line 64
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v10, 0x0

    .line 66
    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    if-ge v10, v12, :cond_10

    .line 67
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf/i/a/a/h1/u0/t/e$b;

    .line 68
    iget-object v14, v12, Lf/i/a/a/h1/u0/t/e$b;->a:Landroid/net/Uri;

    invoke-virtual {v8, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 69
    iget-object v14, v12, Lf/i/a/a/h1/u0/t/e$b;->b:Lf/i/a/a/b0;

    iget-object v14, v14, Lf/i/a/a/b0;->g:Lf/i/a/a/d1/a;

    if-nez v14, :cond_e

    const/4 v14, 0x1

    goto :goto_a

    :cond_e
    const/4 v14, 0x0

    :goto_a
    invoke-static {v14}, Lc/a/a/b/g/h;->v(Z)V

    .line 70
    new-instance v14, Lf/i/a/a/h1/u0/o;

    iget-object v15, v12, Lf/i/a/a/h1/u0/t/e$b;->a:Landroid/net/Uri;

    .line 71
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-direct {v14, v13, v13, v15}, Lf/i/a/a/h1/u0/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 72
    iget-object v13, v12, Lf/i/a/a/h1/u0/t/e$b;->b:Lf/i/a/a/b0;

    new-instance v15, Lf/i/a/a/d1/a;

    move-object/from16 v20, v0

    const/4 v0, 0x1

    new-array v0, v0, [Lf/i/a/a/d1/a$b;

    const/16 v21, 0x0

    aput-object v14, v0, v21

    invoke-direct {v15, v0}, Lf/i/a/a/d1/a;-><init>([Lf/i/a/a/d1/a$b;)V

    .line 73
    invoke-virtual {v13, v15}, Lf/i/a/a/b0;->e(Lf/i/a/a/d1/a;)Lf/i/a/a/b0;

    move-result-object v24

    .line 74
    new-instance v0, Lf/i/a/a/h1/u0/t/e$b;

    iget-object v13, v12, Lf/i/a/a/h1/u0/t/e$b;->a:Landroid/net/Uri;

    iget-object v14, v12, Lf/i/a/a/h1/u0/t/e$b;->c:Ljava/lang/String;

    iget-object v15, v12, Lf/i/a/a/h1/u0/t/e$b;->d:Ljava/lang/String;

    move-object/from16 p0, v8

    iget-object v8, v12, Lf/i/a/a/h1/u0/t/e$b;->e:Ljava/lang/String;

    iget-object v12, v12, Lf/i/a/a/h1/u0/t/e$b;->f:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v23, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-object/from16 v27, v8

    move-object/from16 v28, v12

    invoke-direct/range {v22 .. v28}, Lf/i/a/a/h1/u0/t/e$b;-><init>(Landroid/net/Uri;Lf/i/a/a/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    move-object/from16 v20, v0

    move-object/from16 p0, v8

    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, p0

    move-object/from16 v0, v20

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    move-object v8, v13

    .line 76
    :goto_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_2b

    .line 77
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 78
    sget-object v12, Lf/i/a/a/h1/u0/t/h;->C:Ljava/util/regex/Pattern;

    invoke-static {v10, v12, v11}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 79
    sget-object v14, Lf/i/a/a/h1/u0/t/h;->B:Ljava/util/regex/Pattern;

    invoke-static {v10, v14, v11}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 80
    sget-object v15, Lf/i/a/a/h1/u0/t/h;->x:Ljava/util/regex/Pattern;

    invoke-static {v10, v15, v11}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_11

    const/4 v15, 0x0

    goto :goto_d

    .line 81
    :cond_11
    invoke-static {v1, v15}, Lc/a/a/b/g/h;->g1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 82
    :goto_d
    sget-object v1, Lf/i/a/a/h1/u0/t/h;->A:Ljava/util/regex/Pattern;

    invoke-static {v10, v1, v11}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v31

    .line 83
    sget-object v1, Lf/i/a/a/h1/u0/t/h;->G:Ljava/util/regex/Pattern;

    move-object/from16 v32, v3

    const/4 v3, 0x0

    invoke-static {v10, v1, v3}, Lf/i/a/a/h1/u0/t/h;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v1

    move-object/from16 p0, v8

    .line 84
    sget-object v8, Lf/i/a/a/h1/u0/t/h;->H:Ljava/util/regex/Pattern;

    invoke-static {v10, v8, v3}, Lf/i/a/a/h1/u0/t/h;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v8

    if-eqz v8, :cond_12

    or-int/lit8 v1, v1, 0x2

    .line 85
    :cond_12
    sget-object v8, Lf/i/a/a/h1/u0/t/h;->F:Ljava/util/regex/Pattern;

    invoke-static {v10, v8, v3}, Lf/i/a/a/h1/u0/t/h;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v3

    if-eqz v3, :cond_13

    or-int/lit8 v1, v1, 0x4

    :cond_13
    move/from16 v30, v1

    .line 86
    sget-object v1, Lf/i/a/a/h1/u0/t/h;->D:Ljava/util/regex/Pattern;

    .line 87
    invoke-static {v10, v1, v11}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v1, 0x0

    goto :goto_f

    :cond_14
    const-string v3, ","

    .line 89
    invoke-static {v1, v3}, Lf/i/a/a/m1/h0;->l0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "public.accessibility.describes-video"

    .line 90
    invoke-static {v1, v3}, Lf/i/a/a/m1/h0;->q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v3, 0x200

    goto :goto_e

    :cond_15
    const/4 v3, 0x0

    :goto_e
    const-string v8, "public.accessibility.transcribes-spoken-dialog"

    .line 91
    invoke-static {v1, v8}, Lf/i/a/a/m1/h0;->q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    or-int/lit16 v3, v3, 0x1000

    :cond_16
    const-string v8, "public.accessibility.describes-music-and-sound"

    .line 92
    invoke-static {v1, v8}, Lf/i/a/a/m1/h0;->q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    or-int/lit16 v3, v3, 0x400

    :cond_17
    const-string v8, "public.easy-to-read"

    .line 93
    invoke-static {v1, v8}, Lf/i/a/a/m1/h0;->q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    or-int/lit16 v1, v3, 0x2000

    goto :goto_f

    :cond_18
    move v1, v3

    :goto_f
    const-string v3, ":"

    .line 94
    invoke-static {v12, v3, v14}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 95
    new-instance v3, Lf/i/a/a/d1/a;

    const/4 v8, 0x1

    new-array v8, v8, [Lf/i/a/a/d1/a$b;

    move-object/from16 v33, v7

    new-instance v7, Lf/i/a/a/h1/u0/o;

    move/from16 v34, v9

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v12, v14, v9}, Lf/i/a/a/h1/u0/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-direct {v3, v8}, Lf/i/a/a/d1/a;-><init>([Lf/i/a/a/d1/a$b;)V

    .line 97
    sget-object v7, Lf/i/a/a/h1/u0/t/h;->z:Ljava/util/regex/Pattern;

    invoke-static {v10, v7, v11}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x2

    sparse-switch v8, :sswitch_data_0

    goto :goto_10

    :sswitch_0
    const-string v8, "VIDEO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v7, 0x0

    goto :goto_11

    :sswitch_1
    const-string v8, "AUDIO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v7, 0x1

    goto :goto_11

    :sswitch_2
    const-string v8, "CLOSED-CAPTIONS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v7, 0x3

    goto :goto_11

    :sswitch_3
    const-string v8, "SUBTITLES"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v7, 0x2

    goto :goto_11

    :cond_19
    :goto_10
    const/4 v7, -0x1

    :goto_11
    if-eqz v7, :cond_25

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1e

    if-eq v7, v9, :cond_1d

    const/4 v3, 0x3

    if-eq v7, v3, :cond_1a

    goto/16 :goto_1c

    .line 98
    :cond_1a
    sget-object v3, Lf/i/a/a/h1/u0/t/h;->E:Ljava/util/regex/Pattern;

    invoke-static {v10, v3, v11}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "CC"

    .line 99
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 100
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v7, "application/cea-608"

    goto :goto_12

    :cond_1b
    const/4 v7, 0x7

    .line 101
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v7, "application/cea-708"

    :goto_12
    move/from16 v29, v3

    move-object/from16 v23, v7

    if-nez v13, :cond_1c

    .line 102
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_1c
    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    move-object/from16 v21, v14

    move/from16 v26, v30

    move/from16 v27, v1

    move-object/from16 v28, v31

    .line 103
    invoke-static/range {v20 .. v29}, Lf/i/a/a/b0;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Lf/i/a/a/b0;

    move-result-object v1

    .line 104
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    :cond_1d
    const/16 v24, 0x0

    const/16 v25, -0x1

    const-string v22, "application/x-mpegURL"

    const-string v23, "text/vtt"

    move-object/from16 v21, v14

    move/from16 v26, v30

    move/from16 v27, v1

    move-object/from16 v28, v31

    .line 105
    invoke-static/range {v20 .. v28}, Lf/i/a/a/b0;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v3}, Lf/i/a/a/b0;->e(Lf/i/a/a/d1/a;)Lf/i/a/a/b0;

    move-result-object v1

    .line 107
    new-instance v3, Lf/i/a/a/h1/u0/t/e$a;

    invoke-direct {v3, v15, v1, v12, v14}, Lf/i/a/a/h1/u0/t/e$a;-><init>(Landroid/net/Uri;Lf/i/a/a/b0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    :cond_1e
    const/4 v7, 0x0

    .line 108
    :goto_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_20

    .line 109
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf/i/a/a/h1/u0/t/e$b;

    .line 110
    iget-object v9, v8, Lf/i/a/a/h1/u0/t/e$b;->d:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    goto :goto_14

    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_20
    const/4 v8, 0x0

    :goto_14
    if-eqz v8, :cond_21

    .line 111
    iget-object v7, v8, Lf/i/a/a/h1/u0/t/e$b;->b:Lf/i/a/a/b0;

    iget-object v7, v7, Lf/i/a/a/b0;->f:Ljava/lang/String;

    const/4 v8, 0x1

    .line 112
    invoke-static {v7, v8}, Lf/i/a/a/m1/h0;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_15

    :cond_21
    const/4 v7, 0x0

    :goto_15
    move-object/from16 v24, v7

    if-eqz v24, :cond_22

    .line 113
    invoke-static/range {v24 .. v24}, Lf/i/a/a/m1/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_16

    :cond_22
    const/4 v7, 0x0

    :goto_16
    move-object/from16 v23, v7

    .line 114
    sget-object v7, Lf/i/a/a/h1/u0/t/h;->h:Ljava/util/regex/Pattern;

    invoke-static {v10, v7, v11}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_23

    const-string v8, "/"

    .line 115
    invoke-static {v7, v8}, Lf/i/a/a/m1/h0;->m0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move/from16 v26, v7

    goto :goto_17

    :cond_23
    const/4 v7, -0x1

    const/16 v26, -0x1

    :goto_17
    const/16 v25, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const-string v22, "application/x-mpegURL"

    move-object/from16 v21, v14

    move/from16 v29, v30

    move/from16 v30, v1

    .line 116
    invoke-static/range {v20 .. v31}, Lf/i/a/a/b0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v1

    if-nez v15, :cond_24

    move-object v8, v1

    goto/16 :goto_1d

    .line 117
    :cond_24
    new-instance v7, Lf/i/a/a/h1/u0/t/e$a;

    invoke-virtual {v1, v3}, Lf/i/a/a/b0;->e(Lf/i/a/a/d1/a;)Lf/i/a/a/b0;

    move-result-object v1

    invoke-direct {v7, v15, v1, v12, v14}, Lf/i/a/a/h1/u0/t/e$a;-><init>(Landroid/net/Uri;Lf/i/a/a/b0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    :cond_25
    const/4 v7, 0x0

    .line 118
    :goto_18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_27

    .line 119
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf/i/a/a/h1/u0/t/e$b;

    .line 120
    iget-object v10, v8, Lf/i/a/a/h1/u0/t/e$b;->c:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    goto :goto_19

    :cond_26
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_27
    const/4 v8, 0x0

    :goto_19
    if-eqz v8, :cond_28

    .line 121
    iget-object v7, v8, Lf/i/a/a/h1/u0/t/e$b;->b:Lf/i/a/a/b0;

    .line 122
    iget-object v8, v7, Lf/i/a/a/b0;->f:Ljava/lang/String;

    invoke-static {v8, v9}, Lf/i/a/a/m1/h0;->y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 123
    iget v9, v7, Lf/i/a/a/b0;->n:I

    .line 124
    iget v10, v7, Lf/i/a/a/b0;->o:I

    .line 125
    iget v7, v7, Lf/i/a/a/b0;->p:F

    move/from16 v28, v7

    move-object/from16 v24, v8

    move/from16 v26, v9

    move/from16 v27, v10

    goto :goto_1a

    :cond_28
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    move-object/from16 v24, v7

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/high16 v28, -0x40800000    # -1.0f

    :goto_1a
    if-eqz v24, :cond_29

    .line 126
    invoke-static/range {v24 .. v24}, Lf/i/a/a/m1/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1b

    :cond_29
    const/4 v7, 0x0

    :goto_1b
    move-object/from16 v23, v7

    const/16 v25, -0x1

    const/16 v29, 0x0

    const-string v22, "application/x-mpegURL"

    move-object/from16 v21, v14

    move/from16 v31, v1

    .line 127
    invoke-static/range {v20 .. v31}, Lf/i/a/a/b0;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Lf/i/a/a/b0;

    move-result-object v1

    .line 128
    invoke-virtual {v1, v3}, Lf/i/a/a/b0;->e(Lf/i/a/a/d1/a;)Lf/i/a/a/b0;

    move-result-object v1

    if-nez v15, :cond_2a

    goto :goto_1c

    .line 129
    :cond_2a
    new-instance v3, Lf/i/a/a/h1/u0/t/e$a;

    invoke-direct {v3, v15, v1, v12, v14}, Lf/i/a/a/h1/u0/t/e$a;-><init>(Landroid/net/Uri;Lf/i/a/a/b0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1c
    move-object/from16 v8, p0

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v32

    move-object/from16 v7, v33

    move/from16 v9, v34

    goto/16 :goto_c

    :cond_2b
    move-object/from16 v33, v7

    move-object/from16 p0, v8

    move/from16 v34, v9

    if-eqz v34, :cond_2c

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    goto :goto_1e

    :cond_2c
    move-object v9, v13

    .line 131
    :goto_1e
    new-instance v13, Lf/i/a/a/h1/u0/t/e;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v33

    move-object/from16 v7, v17

    move-object/from16 v8, p0

    move/from16 v10, v16

    move-object/from16 v12, v18

    invoke-direct/range {v0 .. v12}, Lf/i/a/a/h1/u0/t/e;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lf/i/a/a/b0;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13

    nop

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch
.end method

.method public static g(Lf/i/a/a/h1/u0/t/e;Lf/i/a/a/h1/u0/t/h$a;Ljava/lang/String;)Lf/i/a/a/h1/u0/t/f;
    .locals 76
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lf/i/a/a/h1/u0/t/g;->c:Z

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v12, v10

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v48, 0x0

    :goto_0
    const-wide/16 v35, -0x1

    const-string v8, ""

    move-object/from16 v4, v18

    move-object/from16 v5, v29

    move-object/from16 v50, v34

    move-wide/from16 v51, v35

    const/16 v47, 0x0

    const-wide/16 v67, 0x0

    move-object/from16 v34, v8

    move-wide/from16 v28, v27

    move/from16 v27, v26

    move/from16 v26, v25

    move-wide/from16 v24, v23

    move-wide/from16 v72, v12

    move/from16 v12, v16

    move-object/from16 v13, v17

    move-wide/from16 v16, v72

    move-wide/from16 v74, v19

    move/from16 v20, v22

    move-wide/from16 v22, v74

    .line 6
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/h1/u0/t/h$a;->a()Z

    move-result v37

    if-eqz v37, :cond_25

    .line 7
    invoke-virtual/range {p1 .. p1}, Lf/i/a/a/h1/u0/t/h$a;->b()Ljava/lang/String;

    move-result-object v7

    const-string v9, "#EXT"

    .line 8
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 9
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v9, "#EXT-X-PLAYLIST-TYPE"

    .line 10
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 11
    sget-object v9, Lf/i/a/a/h1/u0/t/h;->n:Ljava/util/regex/Pattern;

    invoke-static {v7, v9, v2}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "VOD"

    .line 12
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const-string v9, "EVENT"

    .line 13
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v12, 0x2

    goto :goto_1

    :cond_3
    const-string v9, "#EXT-X-START"

    .line 14
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-wide v37, 0x412e848000000000L    # 1000000.0

    if-eqz v9, :cond_4

    .line 15
    sget-object v9, Lf/i/a/a/h1/u0/t/h;->r:Ljava/util/regex/Pattern;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    mul-double v9, v9, v37

    double-to-long v10, v9

    goto :goto_1

    :cond_4
    const-string v9, "#EXT-X-MAP"

    .line 17
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    move/from16 v70, v1

    const-string v1, "@"

    if-eqz v9, :cond_9

    .line 18
    sget-object v9, Lf/i/a/a/h1/u0/t/h;->x:Ljava/util/regex/Pattern;

    invoke-static {v7, v9, v2}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    move/from16 v71, v14

    .line 19
    sget-object v14, Lf/i/a/a/h1/u0/t/h;->t:Ljava/util/regex/Pattern;

    invoke-static {v7, v14, v2}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 20
    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    .line 21
    aget-object v14, v1, v7

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v37

    .line 22
    array-length v7, v1

    const/4 v14, 0x1

    if-le v7, v14, :cond_5

    .line 23
    aget-object v1, v1, v14

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    :cond_5
    move-wide/from16 v62, v28

    move-wide/from16 v64, v37

    goto :goto_2

    :cond_6
    move-wide/from16 v62, v28

    move-wide/from16 v64, v51

    :goto_2
    if-eqz v13, :cond_8

    if-eqz v5, :cond_7

    goto :goto_3

    .line 24
    :cond_7
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_8
    :goto_3
    new-instance v1, Lf/i/a/a/h1/u0/t/f$a;

    move-object/from16 v50, v1

    const/16 v52, 0x0

    const-wide/16 v54, 0x0

    const/16 v56, -0x1

    const-wide v57, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v59, 0x0

    const/16 v66, 0x0

    const-string v53, ""

    move-object/from16 v51, v9

    move-object/from16 v60, v13

    move-object/from16 v61, v5

    .line 26
    invoke-direct/range {v50 .. v66}, Lf/i/a/a/h1/u0/t/f$a;-><init>(Ljava/lang/String;Lf/i/a/a/h1/u0/t/f$a;Ljava/lang/String;JIJLf/i/a/a/z0/e;Ljava/lang/String;Ljava/lang/String;JJZ)V

    move-wide/from16 v51, v35

    move/from16 v1, v70

    move/from16 v14, v71

    const-wide/16 v28, 0x0

    goto/16 :goto_1

    :cond_9
    move/from16 v71, v14

    const-string v9, "#EXT-X-TARGETDURATION"

    .line 27
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 28
    sget-object v1, Lf/i/a/a/h1/u0/t/h;->l:Ljava/util/regex/Pattern;

    invoke-static {v7, v1}, Lf/i/a/a/h1/u0/t/h;->e(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v1

    move-wide/from16 v53, v10

    int-to-long v9, v1

    const-wide/32 v16, 0xf4240

    mul-long v16, v16, v9

    :cond_a
    :goto_4
    move/from16 v14, v71

    goto/16 :goto_7

    :cond_b
    move-wide/from16 v53, v10

    const-string v9, "#EXT-X-MEDIA-SEQUENCE"

    .line 29
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 30
    sget-object v1, Lf/i/a/a/h1/u0/t/h;->o:Ljava/util/regex/Pattern;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    invoke-static {v7, v1, v9}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v31, v24

    goto :goto_4

    :cond_c
    const-string v9, "#EXT-X-VERSION"

    .line 32
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 33
    sget-object v1, Lf/i/a/a/h1/u0/t/h;->m:Ljava/util/regex/Pattern;

    invoke-static {v7, v1}, Lf/i/a/a/h1/u0/t/h;->e(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v26

    goto :goto_4

    :cond_d
    const-string v9, "#EXT-X-DEFINE"

    .line 34
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 35
    sget-object v1, Lf/i/a/a/h1/u0/t/h;->J:Ljava/util/regex/Pattern;

    invoke-static {v7, v1, v2}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 36
    iget-object v7, v0, Lf/i/a/a/h1/u0/t/e;->j:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_f

    .line 37
    invoke-virtual {v2, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 38
    :cond_e
    sget-object v1, Lf/i/a/a/h1/u0/t/h;->B:Ljava/util/regex/Pattern;

    .line 39
    invoke-static {v7, v1, v2}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lf/i/a/a/h1/u0/t/h;->I:Ljava/util/regex/Pattern;

    .line 40
    invoke-static {v7, v9, v2}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-virtual {v2, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_5
    move-object/from16 v55, v3

    move-object/from16 v56, v5

    const/4 v3, 0x1

    goto/16 :goto_b

    :cond_10
    const-string v9, "#EXTINF"

    .line 42
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 43
    sget-object v1, Lf/i/a/a/h1/u0/t/h;->p:Ljava/util/regex/Pattern;

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    invoke-static {v7, v1, v9}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    mul-double v9, v9, v37

    double-to-long v9, v9

    .line 45
    sget-object v1, Lf/i/a/a/h1/u0/t/h;->q:Ljava/util/regex/Pattern;

    invoke-static {v7, v1, v8, v2}, Lf/i/a/a/h1/u0/t/h;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v34

    move-wide/from16 v67, v9

    goto/16 :goto_4

    :cond_11
    const-string v9, "#EXT-X-KEY"

    .line 46
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 47
    sget-object v1, Lf/i/a/a/h1/u0/t/h;->u:Ljava/util/regex/Pattern;

    invoke-static {v7, v1, v2}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 48
    sget-object v5, Lf/i/a/a/h1/u0/t/h;->v:Ljava/util/regex/Pattern;

    const-string v9, "identity"

    .line 49
    invoke-static {v7, v5, v9, v2}, Lf/i/a/a/h1/u0/t/h;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "NONE"

    .line 50
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 51
    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    const/4 v10, 0x0

    goto :goto_6

    .line 52
    :cond_12
    sget-object v10, Lf/i/a/a/h1/u0/t/h;->y:Ljava/util/regex/Pattern;

    invoke-static {v7, v10, v2}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 53
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    const-string v5, "AES-128"

    .line 54
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 55
    sget-object v1, Lf/i/a/a/h1/u0/t/h;->x:Ljava/util/regex/Pattern;

    invoke-static {v7, v1, v2}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    move-object v5, v10

    goto/16 :goto_4

    :cond_13
    if-nez v4, :cond_14

    .line 56
    invoke-static {v1}, Lf/i/a/a/h1/u0/t/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 57
    :cond_14
    invoke-static {v7, v5, v2}, Lf/i/a/a/h1/u0/t/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lf/i/a/a/z0/e$b;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 58
    invoke-virtual {v3, v5, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    move-object v5, v10

    move/from16 v14, v71

    const/4 v13, 0x0

    const/16 v33, 0x0

    goto/16 :goto_7

    :cond_15
    move-object v5, v10

    move/from16 v14, v71

    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_16
    const-string v9, "#EXT-X-BYTERANGE"

    .line 59
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 60
    sget-object v9, Lf/i/a/a/h1/u0/t/h;->s:Ljava/util/regex/Pattern;

    invoke-static {v7, v9, v2}, Lf/i/a/a/h1/u0/t/h;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 61
    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    .line 62
    aget-object v9, v1, v7

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v51

    .line 63
    array-length v7, v1

    const/4 v9, 0x1

    if-le v7, v9, :cond_a

    .line 64
    aget-object v1, v1, v9

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-wide/from16 v28, v10

    goto/16 :goto_4

    :cond_17
    const/4 v9, 0x1

    const-string v1, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 65
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v10, 0x3a

    if-eqz v1, :cond_18

    .line 66
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/4 v14, 0x1

    goto :goto_7

    :cond_18
    const-string v1, "#EXT-X-DISCONTINUITY"

    .line 67
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_4

    :cond_19
    const-string v1, "#EXT-X-PROGRAM-DATE-TIME"

    .line 68
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-wide/16 v18, 0x0

    cmp-long v1, v22, v18

    if-nez v1, :cond_f

    .line 69
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v9, 0x1

    add-int/2addr v1, v9

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf/i/a/a/m1/h0;->d0(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lf/i/a/a/q;->a(J)J

    move-result-wide v9

    sub-long v22, v9, v48

    goto/16 :goto_4

    :goto_7
    move-wide/from16 v10, v53

    move/from16 v1, v70

    goto/16 :goto_1

    :cond_1a
    const-string v1, "#EXT-X-GAP"

    .line 70
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move-wide/from16 v10, v53

    move/from16 v1, v70

    move/from16 v14, v71

    const/16 v47, 0x1

    goto/16 :goto_1

    :cond_1b
    const-string v1, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 71
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    move-wide/from16 v10, v53

    move/from16 v14, v71

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_1c
    const-string v1, "#EXT-X-ENDLIST"

    .line 72
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move-wide/from16 v10, v53

    move/from16 v1, v70

    move/from16 v14, v71

    const/16 v27, 0x1

    goto/16 :goto_1

    :cond_1d
    const-string v1, "#"

    .line 73
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    if-nez v13, :cond_1e

    const/16 v42, 0x0

    goto :goto_8

    :cond_1e
    if-eqz v5, :cond_1f

    move-object/from16 v42, v5

    goto :goto_8

    .line 74
    :cond_1f
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v42, v1

    :goto_8
    const-wide/16 v8, 0x1

    add-long v8, v31, v8

    cmp-long v1, v51, v35

    if-nez v1, :cond_20

    const-wide/16 v28, 0x0

    :cond_20
    if-nez v33, :cond_23

    .line 75
    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_23

    .line 76
    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v10

    const/4 v11, 0x0

    new-array v14, v11, [Lf/i/a/a/z0/e$b;

    invoke-interface {v10, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lf/i/a/a/z0/e$b;

    .line 77
    new-instance v14, Lf/i/a/a/z0/e;

    const/4 v11, 0x1

    .line 78
    invoke-direct {v14, v4, v11, v10}, Lf/i/a/a/z0/e;-><init>(Ljava/lang/String;Z[Lf/i/a/a/z0/e$b;)V

    if-nez v21, :cond_22

    .line 79
    array-length v11, v10

    new-array v11, v11, [Lf/i/a/a/z0/e$b;

    move-object/from16 v55, v3

    const/4 v0, 0x0

    .line 80
    :goto_9
    array-length v3, v10

    if-ge v0, v3, :cond_21

    .line 81
    aget-object v3, v10, v0

    const/16 v39, 0x0

    .line 82
    new-instance v21, Lf/i/a/a/z0/e$b;

    move-object/from16 v56, v5

    iget-object v5, v3, Lf/i/a/a/z0/e$b;->b:Ljava/util/UUID;

    move-wide/from16 v57, v8

    iget-object v8, v3, Lf/i/a/a/z0/e$b;->c:Ljava/lang/String;

    iget-object v9, v3, Lf/i/a/a/z0/e$b;->d:Ljava/lang/String;

    iget-boolean v3, v3, Lf/i/a/a/z0/e$b;->f:Z

    move-object/from16 v35, v21

    move-object/from16 v36, v5

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    move/from16 v40, v3

    invoke-direct/range {v35 .. v40}, Lf/i/a/a/z0/e$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[BZ)V

    .line 83
    aput-object v21, v11, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v56

    move-wide/from16 v8, v57

    goto :goto_9

    :cond_21
    move-object/from16 v56, v5

    move-wide/from16 v57, v8

    .line 84
    new-instance v0, Lf/i/a/a/z0/e;

    const/4 v3, 0x1

    .line 85
    invoke-direct {v0, v4, v3, v11}, Lf/i/a/a/z0/e;-><init>(Ljava/lang/String;Z[Lf/i/a/a/z0/e$b;)V

    move-object/from16 v21, v0

    goto :goto_a

    :cond_22
    move-object/from16 v55, v3

    move-object/from16 v56, v5

    move-wide/from16 v57, v8

    const/4 v3, 0x1

    goto :goto_a

    :cond_23
    move-object/from16 v55, v3

    move-object/from16 v56, v5

    move-wide/from16 v57, v8

    const/4 v3, 0x1

    move-object/from16 v14, v33

    .line 86
    :goto_a
    new-instance v0, Lf/i/a/a/h1/u0/t/f$a;

    move-object/from16 v31, v0

    .line 87
    invoke-static {v7, v2}, Lf/i/a/a/h1/u0/t/h;->l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v33, v50

    move-wide/from16 v35, v67

    move/from16 v37, v30

    move-wide/from16 v38, v48

    move-object/from16 v40, v14

    move-object/from16 v41, v13

    move-wide/from16 v43, v28

    move-wide/from16 v45, v51

    invoke-direct/range {v31 .. v47}, Lf/i/a/a/h1/u0/t/f$a;-><init>(Ljava/lang/String;Lf/i/a/a/h1/u0/t/f$a;Ljava/lang/String;JIJLf/i/a/a/z0/e;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 88
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long v48, v48, v67

    if-eqz v1, :cond_24

    add-long v28, v28, v51

    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v18, v4

    move-object/from16 v33, v14

    move-object/from16 v34, v50

    move-wide/from16 v10, v53

    move-object/from16 v3, v55

    move-wide/from16 v31, v57

    move/from16 v1, v70

    move/from16 v14, v71

    move-wide/from16 v72, v16

    move/from16 v16, v12

    move-object/from16 v17, v13

    move-wide/from16 v12, v72

    move-wide/from16 v74, v22

    move/from16 v22, v20

    move-wide/from16 v19, v74

    move-wide/from16 v23, v24

    move/from16 v25, v26

    move/from16 v26, v27

    move-wide/from16 v27, v28

    move-object/from16 v29, v56

    goto/16 :goto_0

    :goto_b
    move-object/from16 v0, p0

    move-wide/from16 v10, v53

    move-object/from16 v3, v55

    move-object/from16 v5, v56

    move/from16 v1, v70

    move/from16 v14, v71

    goto/16 :goto_1

    :cond_25
    move/from16 v70, v1

    move-wide/from16 v53, v10

    move/from16 v71, v14

    const/4 v3, 0x1

    .line 89
    new-instance v0, Lf/i/a/a/h1/u0/t/f;

    const-wide/16 v1, 0x0

    cmp-long v4, v22, v1

    if-eqz v4, :cond_26

    const/16 v69, 0x1

    goto :goto_c

    :cond_26
    const/16 v69, 0x0

    :goto_c
    move-object v3, v0

    move v4, v12

    move-object/from16 v5, p2

    move-wide/from16 v7, v53

    move-wide/from16 v9, v22

    move/from16 v11, v71

    move/from16 v12, v20

    move-wide/from16 v13, v24

    move-object v1, v15

    move/from16 v15, v26

    move/from16 v18, v70

    move/from16 v19, v27

    move/from16 v20, v69

    move-object/from16 v22, v1

    invoke-direct/range {v3 .. v22}, Lf/i/a/a/h1/u0/t/f;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLf/i/a/a/z0/e;Ljava/util/List;)V

    return-object v0
.end method

.method public static h(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p2, p3}, Lf/i/a/a/h1/u0/t/h;->l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Lf/i/a/a/h1/u0/t/h;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lf/i/a/a/h1/u0/t/h;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 2
    :cond_0
    new-instance p2, Lf/i/a/a/h0;

    const-string v0, "Couldn\'t match "

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/i/a/a/h1/u0/t/h;->K:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 1
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Lf/i/a/a/m1/h0;->U(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    :cond_1
    return p2
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v2, 0xef

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v2, 0xbb

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v2, 0xbf

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    :cond_1
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v2, v1}, Lf/i/a/a/h1/u0/t/h;->m(Ljava/io/BufferedReader;ZI)I

    move-result v1

    const/4 v2, 0x7

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    const-string v5, "#EXTM3U"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v1, v5, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v0, v3, v1}, Lf/i/a/a/h1/u0/t/h;->m(Ljava/io/BufferedReader;ZI)I

    move-result v1

    .line 10
    invoke-static {v1}, Lf/i/a/a/m1/h0;->U(I)Z

    move-result v3

    :cond_4
    :goto_1
    if-eqz v3, :cond_a

    .line 11
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const-string v2, "#EXT-X-STREAM-INF"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lf/i/a/a/h1/u0/t/h$a;

    invoke-direct {v1, p2, v0}, Lf/i/a/a/h1/u0/t/h$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lf/i/a/a/h1/u0/t/h;->f(Lf/i/a/a/h1/u0/t/h$a;Ljava/lang/String;)Lf/i/a/a/h1/u0/t/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_3
    invoke-static {v0}, Lf/i/a/a/m1/h0;->l(Ljava/io/Closeable;)V

    goto :goto_5

    :cond_6
    :try_start_1
    const-string v2, "#EXT-X-TARGETDURATION"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXT-X-MEDIA-SEQUENCE"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXTINF"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXT-X-KEY"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXT-X-BYTERANGE"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXT-X-DISCONTINUITY"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXT-X-ENDLIST"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 26
    :cond_7
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :cond_8
    :goto_4
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v1, p0, Lf/i/a/a/h1/u0/t/h;->a:Lf/i/a/a/h1/u0/t/e;

    new-instance v2, Lf/i/a/a/h1/u0/t/h$a;

    invoke-direct {v2, p2, v0}, Lf/i/a/a/h1/u0/t/h$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 29
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {v1, v2, p1}, Lf/i/a/a/h1/u0/t/h;->g(Lf/i/a/a/h1/u0/t/e;Lf/i/a/a/h1/u0/t/h$a;Ljava/lang/String;)Lf/i/a/a/h1/u0/t/f;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_5
    return-object p1

    .line 31
    :cond_9
    invoke-static {v0}, Lf/i/a/a/m1/h0;->l(Ljava/io/Closeable;)V

    .line 32
    new-instance p1, Lf/i/a/a/h0;

    const-string p2, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_a
    :try_start_2
    new-instance p2, Lf/i/a/a/h1/q0;

    const-string v1, "Input does not start with the #EXTM3U header."

    invoke-direct {p2, v1, p1}, Lf/i/a/a/h1/q0;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 34
    invoke-static {v0}, Lf/i/a/a/m1/h0;->l(Ljava/io/Closeable;)V

    .line 35
    throw p1
.end method
