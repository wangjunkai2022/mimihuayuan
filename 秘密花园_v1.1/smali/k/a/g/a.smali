.class public Lk/a/g/a;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lk/a/g/f;


# instance fields
.field public final a:Lk/a/e/h;

.field public final b:Lk/a/g/c;

.field public final c:Lk/a/g/d;


# direct methods
.method public constructor <init>(Lk/a/e/h;Lk/a/g/c;Lk/a/g/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/g/a;->a:Lk/a/e/h;

    .line 3
    iput-object p2, p0, Lk/a/g/a;->b:Lk/a/g/c;

    .line 4
    iput-object p3, p0, Lk/a/g/a;->c:Lk/a/g/d;

    return-void
.end method


# virtual methods
.method public a(Lk/a/e/l;I)V
    .locals 1

    .line 1
    instance-of p2, p1, Lk/a/e/h;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lk/a/e/h;

    .line 3
    iget-object p2, p0, Lk/a/g/a;->c:Lk/a/g/d;

    iget-object v0, p0, Lk/a/g/a;->a:Lk/a/e/h;

    invoke-virtual {p2, v0, p1}, Lk/a/g/d;->a(Lk/a/e/h;Lk/a/e/h;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lk/a/g/a;->b:Lk/a/g/c;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lk/a/e/l;I)V
    .locals 0

    return-void
.end method
