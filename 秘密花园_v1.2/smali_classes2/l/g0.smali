.class public final Ll/g0;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Li/h0;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Li/i0;


# direct methods
.method public constructor <init>(Li/h0;Ljava/lang/Object;Li/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/h0;",
            "TT;",
            "Li/i0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/g0;->a:Li/h0;

    .line 3
    iput-object p2, p0, Ll/g0;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Ll/g0;->c:Li/i0;

    return-void
.end method

.method public static b(Ljava/lang/Object;Li/h0;)Ll/g0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Li/h0;",
            ")",
            "Ll/g0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "rawResponse == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Li/h0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ll/g0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Ll/g0;-><init>(Li/h0;Ljava/lang/Object;Li/i0;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse must be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll/g0;->a:Li/h0;

    invoke-virtual {v0}, Li/h0;->g()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/g0;->a:Li/h0;

    invoke-virtual {v0}, Li/h0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
