.class public final Li/b$a;
.super Ljava/lang/Object;
.source "Authenticator.kt"

# interfaces
.implements Li/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/k0;Li/h0;)Li/e0;
    .locals 0

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    const-string p2, "response"

    .line 1
    invoke-static {p2}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw p1
.end method
