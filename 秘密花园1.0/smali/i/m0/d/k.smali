.class public final Li/m0/d/k;
.super Ljava/lang/RuntimeException;
.source "RouteException.kt"


# instance fields
.field public a:Ljava/io/IOException;

.field public final b:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Li/m0/d/k;->b:Ljava/io/IOException;

    .line 2
    iput-object p1, p0, Li/m0/d/k;->a:Ljava/io/IOException;

    return-void
.end method
