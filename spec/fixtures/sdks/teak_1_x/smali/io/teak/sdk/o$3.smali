.class final Lio/teak/sdk/o$3;
.super Lio/teak/sdk/b/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:D


# direct methods
.method constructor <init>(Lio/teak/sdk/o;Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 179
    iput-object p2, p0, Lio/teak/sdk/o$3;->a:Ljava/lang/String;

    iput-wide p3, p0, Lio/teak/sdk/o$3;->b:D

    invoke-direct {p0}, Lio/teak/sdk/b/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/d;)V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p1, Lio/teak/sdk/b/d;->b:Lio/teak/sdk/b/f;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p1, Lio/teak/sdk/b/d;->b:Lio/teak/sdk/b/f;

    iget-object v1, p0, Lio/teak/sdk/o$3;->a:Ljava/lang/String;

    iget-wide v2, p0, Lio/teak/sdk/o$3;->b:D

    invoke-virtual {v0, v1, v2, v3}, Lio/teak/sdk/b/f;->a(Ljava/lang/String;D)V

    .line 185
    :cond_0
    return-void
.end method
