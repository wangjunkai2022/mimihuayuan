.class public final synthetic Lf/i/a/a/e1/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lf/i/a/a/e1/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lf/i/a/a/e1/f;

    invoke-direct {v0}, Lf/i/a/a/e1/f;-><init>()V

    sput-object v0, Lf/i/a/a/e1/f;->a:Lf/i/a/a/e1/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lf/i/a/a/e1/m;

    check-cast p2, Lf/i/a/a/e1/m;

    invoke-static {p1, p2}, Lf/i/a/a/e1/s$c;->a(Lf/i/a/a/e1/m;Lf/i/a/a/e1/m;)I

    move-result p1

    return p1
.end method
