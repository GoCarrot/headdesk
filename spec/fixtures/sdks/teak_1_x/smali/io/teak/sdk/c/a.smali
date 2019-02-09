.class public final Lio/teak/sdk/c/a;
.super Lio/teak/sdk/n;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    const-string v0, "AdvertisingInfoEvent"

    invoke-direct {p0, v0}, Lio/teak/sdk/n;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lio/teak/sdk/c/a;->b:Ljava/lang/String;

    .line 30
    iput-boolean p2, p0, Lio/teak/sdk/c/a;->c:Z

    .line 31
    return-void
.end method
