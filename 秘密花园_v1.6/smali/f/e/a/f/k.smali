.class public Lf/e/a/f/k;
.super Ljava/lang/Object;
.source "BaseBean.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lf/i/b/j;

    invoke-direct {v0}, Lf/i/b/j;-><init>()V

    invoke-virtual {v0, p0}, Lf/i/b/j;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
