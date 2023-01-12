.class public final Li/m0/g/f$b;
.super Ljava/lang/Object;
.source "Http2Connection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Lj/j;

.field public d:Lj/i;

.field public e:Li/m0/g/f$c;

.field public f:Li/m0/g/q;

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Li/m0/g/f$b;->h:Z

    .line 2
    sget-object p1, Li/m0/g/f$c;->a:Li/m0/g/f$c;

    iput-object p1, p0, Li/m0/g/f$b;->e:Li/m0/g/f$c;

    .line 3
    sget-object p1, Li/m0/g/q;->a:Li/m0/g/q;

    iput-object p1, p0, Li/m0/g/f$b;->f:Li/m0/g/q;

    return-void
.end method
