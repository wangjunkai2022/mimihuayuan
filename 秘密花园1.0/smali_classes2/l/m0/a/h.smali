.class public final Ll/m0/a/h;
.super Ljava/lang/Object;
.source "ResultOnSubscribe.java"

# interfaces
.implements Lm/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/m0/a/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm/e$a<",
        "Ll/m0/a/g<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lm/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/e$a<",
            "Ll/g0<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/e$a<",
            "Ll/g0<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/m0/a/h;->a:Lm/e$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lm/j;

    .line 2
    iget-object v0, p0, Ll/m0/a/h;->a:Lm/e$a;

    new-instance v1, Ll/m0/a/h$a;

    invoke-direct {v1, p1}, Ll/m0/a/h$a;-><init>(Lm/j;)V

    invoke-interface {v0, v1}, Lm/n/b;->a(Ljava/lang/Object;)V

    return-void
.end method
