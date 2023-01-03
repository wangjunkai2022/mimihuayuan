.class public Ll/y$b$a;
.super Lj/m;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/y$b;-><init>(Li/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ll/y$b;


# direct methods
.method public constructor <init>(Ll/y$b;Lj/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/y$b$a;->b:Ll/y$b;

    invoke-direct {p0, p2}, Lj/m;-><init>(Lj/a0;)V

    return-void
.end method


# virtual methods
.method public c(Lj/g;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lj/m;->c(Lj/g;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 2
    iget-object p2, p0, Ll/y$b$a;->b:Ll/y$b;

    iput-object p1, p2, Ll/y$b;->e:Ljava/io/IOException;

    .line 3
    throw p1
.end method
