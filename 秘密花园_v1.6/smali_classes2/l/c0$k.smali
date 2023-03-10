.class public final Ll/c0$k;
.super Ll/c0;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll/c0<",
        "Li/a0$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ll/c0$k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll/c0$k;

    invoke-direct {v0}, Ll/c0$k;-><init>()V

    sput-object v0, Ll/c0$k;->a:Ll/c0$k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/e0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Li/a0$c;

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p1, Ll/e0;->i:Li/a0$a;

    invoke-virtual {p1, p2}, Li/a0$a;->b(Li/a0$c;)Li/a0$a;

    :cond_0
    return-void
.end method
