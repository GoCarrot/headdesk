.class public final Lio/teak/sdk/wrapper/air/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/wrapper/air/b$a;
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lio/teak/sdk/wrapper/air/b;->a:I

    .line 36
    return-void
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    .prologue
    .line 41
    :try_start_0
    sget-object v0, Lio/teak/sdk/wrapper/air/b$1;->a:[I

    iget v1, p0, Lio/teak/sdk/wrapper/air/b;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 43
    :pswitch_0
    invoke-static {}, Lio/teak/sdk/Teak;->getAppConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    goto :goto_1

    .line 46
    :pswitch_1
    invoke-static {}, Lio/teak/sdk/Teak;->getDeviceConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
