.class public Lf/d/a/o/o/m;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/o/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/u/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/u/f<",
            "Lf/d/a/o/o/m$b<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/d/a/o/o/m$a;

    invoke-direct {v0, p0, p1, p2}, Lf/d/a/o/o/m$a;-><init>(Lf/d/a/o/o/m;J)V

    iput-object v0, p0, Lf/d/a/o/o/m;->a:Lf/d/a/u/f;

    return-void
.end method
