.class final Lio/teak/sdk/d$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/d$2;->a(Lio/teak/sdk/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/a/d;

.field private synthetic b:Lio/teak/sdk/d$2;


# direct methods
.method constructor <init>(Lio/teak/sdk/d$2;Lio/teak/sdk/a/d;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lio/teak/sdk/d$2$1;->b:Lio/teak/sdk/d$2;

    iput-object p2, p0, Lio/teak/sdk/d$2$1;->a:Lio/teak/sdk/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lio/teak/sdk/d$2$1;->b:Lio/teak/sdk/d$2;

    iget-object v0, v0, Lio/teak/sdk/d$2;->a:Lio/teak/sdk/d;

    iget-object v1, p0, Lio/teak/sdk/d$2$1;->a:Lio/teak/sdk/a/d;

    invoke-static {v0, v1}, Lio/teak/sdk/d;->a(Lio/teak/sdk/d;Lio/teak/sdk/a/d;)V

    .line 192
    return-void
.end method
