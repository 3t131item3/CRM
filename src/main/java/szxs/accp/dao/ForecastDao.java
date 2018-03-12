package szxs.accp.dao;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.Forecast;
import szxs.accp.entity.Plan;

import java.util.List;

public interface ForecastDao {
    /**
     * 根据条件查询相应内容
     * @return
     */
    List<Forecast> forecastList(Forecast forecast);

    /**
     * 新增
     * @return
     */
    int addForecast(Forecast forecast);
}
