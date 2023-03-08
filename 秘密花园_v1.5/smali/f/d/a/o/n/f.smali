.class public Lf/d/a/o/n/f;
.super Ljava/lang/Object;
.source "DataCacheWriter.java"

# interfaces
.implements Lf/d/a/o/n/c0/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d/a/o/n/c0/a$b;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/d<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field public final c:Lf/d/a/o/h;


# direct methods
.method public constructor <init>(Lf/d/a/o/d;Ljava/lang/Object;Lf/d/a/o/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/d<",
            "TDataType;>;TDataType;",
            "Lf/d/a/o/h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/d/a/o/n/f;->a:Lf/d/a/o/d;

    .line 3
    iput-object p2, p0, Lf/d/a/o/n/f;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lf/d/a/o/n/f;->c:Lf/d/a/o/h;

    return-void
.end method
