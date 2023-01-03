.class public final Lf/i/a/a/h1/u0/e;
.super Ljava/lang/Object;
.source "DefaultHlsDataSourceFactory.java"

# interfaces
.implements Lf/i/a/a/h1/u0/h;


# instance fields
.field public final a:Lf/i/a/a/l1/m$a;


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/u0/e;->a:Lf/i/a/a/l1/m$a;

    return-void
.end method


# virtual methods
.method public a(I)Lf/i/a/a/l1/m;
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/h1/u0/e;->a:Lf/i/a/a/l1/m$a;

    invoke-interface {p1}, Lf/i/a/a/l1/m$a;->createDataSource()Lf/i/a/a/l1/m;

    move-result-object p1

    return-object p1
.end method
