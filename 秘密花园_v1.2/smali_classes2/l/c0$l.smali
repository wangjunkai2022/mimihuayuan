.class public final Ll/c0$l;
.super Ll/c0;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll/c0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll/c0;-><init>()V

    .line 2
    iput-object p1, p0, Ll/c0$l;->a:Ljava/lang/reflect/Method;

    .line 3
    iput p2, p0, Ll/c0$l;->b:I

    return-void
.end method


# virtual methods
.method public a(Ll/e0;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Ll/e0;->c:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1

    .line 2
    :cond_1
    iget-object p1, p0, Ll/c0$l;->a:Ljava/lang/reflect/Method;

    iget p2, p0, Ll/c0$l;->b:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@Url parameter is null."

    invoke-static {p1, p2, v1, v0}, Ll/l0;->l(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
