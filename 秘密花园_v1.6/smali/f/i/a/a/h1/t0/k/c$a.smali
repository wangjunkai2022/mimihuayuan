.class public final Lf/i/a/a/h1/t0/k/c$a;
.super Ljava/lang/Object;
.source "DashManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/t0/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/b0;

.field public final b:Ljava/lang/String;

.field public final c:Lf/i/a/a/h1/t0/k/j;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/z0/e$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/h1/t0/k/d;",
            ">;"
        }
    .end annotation
.end field

.field public final g:J


# direct methods
.method public constructor <init>(Lf/i/a/a/b0;Ljava/lang/String;Lf/i/a/a/h1/t0/k/j;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/b0;",
            "Ljava/lang/String;",
            "Lf/i/a/a/h1/t0/k/j;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/z0/e$b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lf/i/a/a/h1/t0/k/d;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/t0/k/c$a;->a:Lf/i/a/a/b0;

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/t0/k/c$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lf/i/a/a/h1/t0/k/c$a;->c:Lf/i/a/a/h1/t0/k/j;

    .line 5
    iput-object p4, p0, Lf/i/a/a/h1/t0/k/c$a;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lf/i/a/a/h1/t0/k/c$a;->e:Ljava/util/ArrayList;

    .line 7
    iput-object p6, p0, Lf/i/a/a/h1/t0/k/c$a;->f:Ljava/util/ArrayList;

    .line 8
    iput-wide p7, p0, Lf/i/a/a/h1/t0/k/c$a;->g:J

    return-void
.end method
