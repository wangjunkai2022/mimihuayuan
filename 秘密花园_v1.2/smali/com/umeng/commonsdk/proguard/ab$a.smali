.class public Lcom/umeng/commonsdk/proguard/ab$a;
.super Ljava/lang/Object;
.source "TBinaryProtocol.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/ak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/proguard/ab$a;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/commonsdk/proguard/ab$a;-><init>(ZZI)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/umeng/commonsdk/proguard/ab$a;->a:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/umeng/commonsdk/proguard/ab$a;->b:Z

    .line 6
    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/ab$a;->a:Z

    .line 7
    iput-boolean p2, p0, Lcom/umeng/commonsdk/proguard/ab$a;->b:Z

    .line 8
    iput p3, p0, Lcom/umeng/commonsdk/proguard/ab$a;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/proguard/aw;)Lcom/umeng/commonsdk/proguard/ai;
    .locals 3

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/proguard/ab;

    iget-boolean v1, p0, Lcom/umeng/commonsdk/proguard/ab$a;->a:Z

    iget-boolean v2, p0, Lcom/umeng/commonsdk/proguard/ab$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/umeng/commonsdk/proguard/ab;-><init>(Lcom/umeng/commonsdk/proguard/aw;ZZ)V

    .line 2
    iget p1, p0, Lcom/umeng/commonsdk/proguard/ab$a;->c:I

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/proguard/ab;->c(I)V

    :cond_0
    return-object v0
.end method
