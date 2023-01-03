.class public final synthetic Lf/e/a/j/k/h/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final synthetic a:Lf/e/a/j/k/h/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lf/e/a/j/k/h/a;

    invoke-direct {v0}, Lf/e/a/j/k/h/a;-><init>()V

    sput-object v0, Lf/e/a/j/k/h/a;->a:Lf/e/a/j/k/h/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p1, p2}, Lf/e/a/j/k/h/c;->a(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    const/4 p1, 0x1

    return p1
.end method
