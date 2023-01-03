.class public final Lh/s/g;
.super Lh/o/c/h;
.source "Strings.kt"

# interfaces
.implements Lh/o/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/o/c/h;",
        "Lh/o/b/b<",
        "Lh/p/c;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lh/s/g;->a:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lh/o/c/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lh/p/c;

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lh/s/g;->a:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lh/s/d;->x(Ljava/lang/CharSequence;Lh/p/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "it"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
