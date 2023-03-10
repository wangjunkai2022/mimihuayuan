.class public Lf/i/a/a/k1/c$a;
.super Ljava/lang/Object;
.source "ExoPlayerView.java"

# interfaces
.implements Lf/i/a/a/f1/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/k1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/k1/c;


# direct methods
.method public constructor <init>(Lf/i/a/a/k1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/k1/c$a;->a:Lf/i/a/a/k1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/f1/a$b;II)V
    .locals 0

    .line 1
    sget-object p2, Lf/i/a/a/k1/c;->t:Ljava/lang/String;

    .line 2
    iget-object p2, p0, Lf/i/a/a/k1/c$a;->a:Lf/i/a/a/k1/c;

    .line 3
    iget-object p3, p2, Lf/i/a/a/k1/c;->r:Lf/i/a/a/f1/a$b;

    if-nez p3, :cond_0

    .line 4
    iput-object p1, p2, Lf/i/a/a/k1/c;->r:Lf/i/a/a/f1/a$b;

    .line 5
    iget-object p2, p2, Lf/i/a/a/k1/e;->i:Lf/i/a/a/l0;

    check-cast p2, Lf/i/a/a/t0;

    invoke-interface {p1, p2}, Lf/i/a/a/f1/a$b;->a(Lf/i/a/a/t0;)V

    :cond_0
    return-void
.end method
