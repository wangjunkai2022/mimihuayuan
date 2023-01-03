.class public interface abstract Lf/i/a/a/h1/u0/i;
.super Ljava/lang/Object;
.source "HlsExtractorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/u0/i$a;
    }
.end annotation


# static fields
.field public static final a:Lf/i/a/a/h1/u0/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/i/a/a/h1/u0/f;

    invoke-direct {v0}, Lf/i/a/a/h1/u0/f;-><init>()V

    sput-object v0, Lf/i/a/a/h1/u0/i;->a:Lf/i/a/a/h1/u0/i;

    return-void
.end method


# virtual methods
.method public abstract a(Lf/i/a/a/b1/g;Landroid/net/Uri;Lf/i/a/a/b0;Ljava/util/List;Lf/i/a/a/z0/e;Lf/i/a/a/m1/e0;Ljava/util/Map;Lf/i/a/a/b1/d;)Lf/i/a/a/h1/u0/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/b1/g;",
            "Landroid/net/Uri;",
            "Lf/i/a/a/b0;",
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;",
            "Lf/i/a/a/z0/e;",
            "Lf/i/a/a/m1/e0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lf/i/a/a/b1/d;",
            ")",
            "Lf/i/a/a/h1/u0/i$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
