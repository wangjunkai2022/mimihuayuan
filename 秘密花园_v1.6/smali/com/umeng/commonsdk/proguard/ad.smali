.class public Lcom/umeng/commonsdk/proguard/ad;
.super Ljava/lang/Object;
.source "TField.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:B

.field public final c:S


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v1}, Lcom/umeng/commonsdk/proguard/ad;-><init>(Ljava/lang/String;BS)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BS)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Ljava/lang/String;

    .line 4
    iput-byte p2, p0, Lcom/umeng/commonsdk/proguard/ad;->b:B

    .line 5
    iput-short p3, p0, Lcom/umeng/commonsdk/proguard/ad;->c:S

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/proguard/ad;)Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/ad;->b:B

    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/ad;->b:B

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lcom/umeng/commonsdk/proguard/ad;->c:S

    iget-short p1, p1, Lcom/umeng/commonsdk/proguard/ad;->c:S

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "<TField name:\'"

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/umeng/commonsdk/proguard/ad;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " field-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/umeng/commonsdk/proguard/ad;->c:S

    const-string v2, ">"

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
