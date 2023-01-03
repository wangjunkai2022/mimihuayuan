.class public final Lf/i/a/a/b1/x/u$a;
.super Ljava/lang/Object;
.source "PsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/b1/x/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/b1/x/j;

.field public final b:Lf/i/a/a/m1/e0;

.field public final c:Lf/i/a/a/m1/t;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/x/j;Lf/i/a/a/m1/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/b1/x/u$a;->a:Lf/i/a/a/b1/x/j;

    .line 3
    iput-object p2, p0, Lf/i/a/a/b1/x/u$a;->b:Lf/i/a/a/m1/e0;

    .line 4
    new-instance p1, Lf/i/a/a/m1/t;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Lf/i/a/a/m1/t;-><init>([B)V

    iput-object p1, p0, Lf/i/a/a/b1/x/u$a;->c:Lf/i/a/a/m1/t;

    return-void
.end method
