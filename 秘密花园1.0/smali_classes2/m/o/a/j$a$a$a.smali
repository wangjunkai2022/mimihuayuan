.class public Lm/o/a/j$a$a$a;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lm/n/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/o/a/j$a$a;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lm/o/a/j$a$a;


# direct methods
.method public constructor <init>(Lm/o/a/j$a$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/o/a/j$a$a$a;->b:Lm/o/a/j$a$a;

    iput-wide p2, p0, Lm/o/a/j$a$a$a;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm/o/a/j$a$a$a;->b:Lm/o/a/j$a$a;

    iget-object v0, v0, Lm/o/a/j$a$a;->a:Lm/f;

    iget-wide v1, p0, Lm/o/a/j$a$a$a;->a:J

    invoke-interface {v0, v1, v2}, Lm/f;->b(J)V

    return-void
.end method
