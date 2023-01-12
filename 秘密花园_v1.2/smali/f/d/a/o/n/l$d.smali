.class public Lf/d/a/o/n/l$d;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/n/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lf/d/a/o/n/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/n/m<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lf/d/a/s/f;

.field public final synthetic c:Lf/d/a/o/n/l;


# direct methods
.method public constructor <init>(Lf/d/a/o/n/l;Lf/d/a/s/f;Lf/d/a/o/n/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/s/f;",
            "Lf/d/a/o/n/m<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf/d/a/o/n/l$d;->c:Lf/d/a/o/n/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/d/a/o/n/l$d;->b:Lf/d/a/s/f;

    .line 3
    iput-object p3, p0, Lf/d/a/o/n/l$d;->a:Lf/d/a/o/n/m;

    return-void
.end method
