.class final Lio/teak/sdk/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/a/b;-><init>(Landroid/content/Context;Lio/teak/sdk/d/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/a/b;


# direct methods
.method constructor <init>(Lio/teak/sdk/a/b;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lio/teak/sdk/a/b$1;->a:Lio/teak/sdk/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/o;)V
    .locals 4
    .param p1    # Lio/teak/sdk/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v2, p1, Lio/teak/sdk/o;->a:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 59
    :goto_1
    return-void

    .line 54
    :pswitch_0
    const-string v3, "AdvertisingInfoEvent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v1, p0, Lio/teak/sdk/a/b$1;->a:Lio/teak/sdk/a/b;

    invoke-static {v1}, Lio/teak/sdk/a/b;->a(Lio/teak/sdk/a/b;)Z

    move-result v2

    check-cast p1, Lio/teak/sdk/c/a;

    iget-boolean v3, p1, Lio/teak/sdk/c/a;->c:Z

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    and-int/2addr v0, v2

    invoke-static {v1, v0}, Lio/teak/sdk/a/b;->a(Lio/teak/sdk/a/b;Z)Z

    goto :goto_1

    .line 54
    nop

    :pswitch_data_0
    .packed-switch -0x4cc6e018
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
