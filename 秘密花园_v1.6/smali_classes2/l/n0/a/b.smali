.class public final Ll/n0/a/b;
.super Ljava/lang/Object;
.source "GsonRequestBodyConverter.java"

# interfaces
.implements Ll/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll/l<",
        "TT;",
        "Li/g0;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Li/z;

.field public static final d:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Lf/i/b/j;

.field public final b:Lf/i/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/z<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 1
    invoke-static {v0}, Li/z;->b(Ljava/lang/String;)Li/z;

    move-result-object v0

    sput-object v0, Ll/n0/a/b;->c:Li/z;

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ll/n0/a/b;->d:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lf/i/b/j;Lf/i/b/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/j;",
            "Lf/i/b/z<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/n0/a/b;->a:Lf/i/b/j;

    .line 3
    iput-object p2, p0, Ll/n0/a/b;->b:Lf/i/b/z;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lj/g;

    invoke-direct {v0}, Lj/g;-><init>()V

    .line 2
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 3
    new-instance v2, Lj/h;

    invoke-direct {v2, v0}, Lj/h;-><init>(Lj/g;)V

    .line 4
    sget-object v3, Ll/n0/a/b;->d:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 5
    iget-object v2, p0, Ll/n0/a/b;->a:Lf/i/b/j;

    invoke-virtual {v2, v1}, Lf/i/b/j;->i(Ljava/io/Writer;)Lf/i/b/e0/c;

    move-result-object v1

    .line 6
    iget-object v2, p0, Ll/n0/a/b;->b:Lf/i/b/z;

    invoke-virtual {v2, v1, p1}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v1}, Lf/i/b/e0/c;->close()V

    .line 8
    sget-object p1, Ll/n0/a/b;->c:Li/z;

    invoke-virtual {v0}, Lj/g;->F()Lj/k;

    move-result-object v0

    .line 9
    new-instance v1, Li/f0;

    invoke-direct {v1, v0, p1}, Li/f0;-><init>(Lj/k;Li/z;)V

    return-object v1
.end method
