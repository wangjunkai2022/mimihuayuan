.class public Lf/d/a/o/o/w$b;
.super Ljava/lang/Object;
.source "UriLoader.java"

# interfaces
.implements Lf/d/a/o/o/o;
.implements Lf/d/a/o/o/w$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/o/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/o<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lf/d/a/o/o/w$c<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/d/a/o/o/w$b;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lf/d/a/o/m/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lf/d/a/o/m/d<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/d/a/o/m/i;

    iget-object v1, p0, Lf/d/a/o/o/w$b;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Lf/d/a/o/m/i;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public b(Lf/d/a/o/o/r;)Lf/d/a/o/o/n;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/o/r;",
            ")",
            "Lf/d/a/o/o/n<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lf/d/a/o/o/w;

    invoke-direct {p1, p0}, Lf/d/a/o/o/w;-><init>(Lf/d/a/o/o/w$c;)V

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
