.class public Lcom/umeng/commonsdk/proguard/s;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field public final a:Ljava/io/ByteArrayOutputStream;

.field public final b:Lcom/umeng/commonsdk/proguard/au;

.field public c:Lcom/umeng/commonsdk/proguard/ai;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/proguard/ac$a;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/ac$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/s;-><init>(Lcom/umeng/commonsdk/proguard/ak;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/ak;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/s;->a:Ljava/io/ByteArrayOutputStream;

    .line 4
    new-instance v1, Lcom/umeng/commonsdk/proguard/au;

    invoke-direct {v1, v0}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/umeng/commonsdk/proguard/s;->b:Lcom/umeng/commonsdk/proguard/au;

    .line 5
    invoke-interface {p1, v1}, Lcom/umeng/commonsdk/proguard/ak;->a(Lcom/umeng/commonsdk/proguard/aw;)Lcom/umeng/commonsdk/proguard/ai;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/s;->c:Lcom/umeng/commonsdk/proguard/ai;

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/proguard/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/s;->a(Lcom/umeng/commonsdk/proguard/j;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
    :catch_0
    new-instance p1, Lcom/umeng/commonsdk/proguard/p;

    const-string v0, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-static {v0, p2}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/umeng/commonsdk/proguard/j;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/s;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 2
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/s;->c:Lcom/umeng/commonsdk/proguard/ai;

    invoke-interface {p1, v0}, Lcom/umeng/commonsdk/proguard/j;->write(Lcom/umeng/commonsdk/proguard/ai;)V

    .line 3
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/s;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/umeng/commonsdk/proguard/j;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/s;->a(Lcom/umeng/commonsdk/proguard/j;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
