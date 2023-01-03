.class public final Lf/i/a/a/e1/s$b;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/e1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/e1/m;

.field public final b:Z

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/e1/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/e1/m;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/e1/m;",
            "Z",
            "Ljava/util/List<",
            "Lf/i/a/a/e1/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/e1/s$b;->a:Lf/i/a/a/e1/m;

    .line 3
    iput-boolean p2, p0, Lf/i/a/a/e1/s$b;->b:Z

    .line 4
    iput-object p3, p0, Lf/i/a/a/e1/s$b;->c:Ljava/util/List;

    return-void
.end method
